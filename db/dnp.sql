-- phpMyAdmin SQL Dump
-- version 4.0.10.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 14, 2016 at 08:28 AM
-- Server version: 5.5.46
-- PHP Version: 5.5.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dnp`
--

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_assets`
--

CREATE TABLE IF NOT EXISTS `c39g0_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=83 ;

--
-- Dumping data for table `c39g0_assets`
--

INSERT INTO `c39g0_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 159, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 44, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 45, 46, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 47, 48, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 49, 50, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 51, 52, 1, 'com_login', 'com_login', '{}'),
(13, 1, 53, 54, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 55, 56, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 57, 58, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 59, 60, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 61, 62, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 63, 124, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 125, 128, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 129, 130, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 131, 132, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 133, 134, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 135, 136, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.options":[],"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 137, 140, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(26, 1, 141, 142, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 35, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 126, 127, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 138, 139, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 143, 144, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 145, 146, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 147, 148, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 149, 150, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 151, 152, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 153, 154, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 64, 65, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(40, 18, 66, 67, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 68, 69, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 70, 71, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 72, 73, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 74, 75, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 76, 77, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 78, 79, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 80, 81, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 82, 83, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 84, 85, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 86, 87, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 18, 88, 89, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(52, 18, 90, 91, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 92, 93, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 27, 19, 20, 3, 'com_content.article.1', 'publications', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(55, 27, 21, 22, 3, 'com_content.article.2', 'Contact', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(56, 27, 23, 24, 3, 'com_content.article.3', 'Sector Policies', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(57, 27, 25, 26, 3, 'com_content.article.4', 'Links', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(58, 27, 27, 28, 3, 'com_content.article.5', 'Circulars', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(59, 27, 29, 30, 3, 'com_content.article.6', 'Description of Photo Gallery', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(60, 27, 31, 32, 3, 'com_content.article.7', 'Project Submission Format', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(61, 18, 94, 95, 2, 'com_modules.module.87', 'Header menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(62, 18, 96, 97, 2, 'com_modules.module.88', 'ARI Image Slider', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(63, 8, 36, 43, 2, 'com_content.category.8', 'imges', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(64, 63, 37, 38, 3, 'com_content.article.8', 'slide one', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(65, 63, 39, 40, 3, 'com_content.article.9', 'Slide two', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(66, 63, 41, 42, 3, 'com_content.article.10', 'Slide Three', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(67, 18, 98, 99, 2, 'com_modules.module.89', 'Search', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(68, 18, 100, 101, 2, 'com_modules.module.90', 'Contact', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(69, 18, 102, 103, 2, 'com_modules.module.91', 'Related Links', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(70, 18, 104, 105, 2, 'com_modules.module.92', 'Connect with Us', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(71, 18, 106, 107, 2, 'com_modules.module.93', 'Directors', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(72, 18, 108, 109, 2, 'com_modules.module.94', 'Search header', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(73, 27, 33, 34, 3, 'com_content.article.11', 'Home', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(74, 18, 110, 111, 2, 'com_modules.module.95', 'jDownloads Latest', '{}'),
(75, 18, 112, 113, 2, 'com_modules.module.96', 'jDownloads Top', '{}'),
(76, 18, 114, 115, 2, 'com_modules.module.97', 'jDownloads Last Updated', '{}'),
(77, 18, 116, 117, 2, 'com_modules.module.98', 'jDownloads Most Recently Downloaded', '{}'),
(78, 18, 118, 119, 2, 'com_modules.module.99', 'jDownloads Stats', '{}'),
(79, 18, 120, 121, 2, 'com_modules.module.100', 'jDownloads Tree', '{}'),
(80, 18, 122, 123, 2, 'com_modules.module.101', 'jDownloads Related', '{}'),
(81, 1, 155, 158, 1, 'com_jdownloads', 'com_jDownloads', '{"core.admin":[],"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[],"download":{"1":1},"edit.config":[],"edit.user.limits":[]}'),
(82, 81, 156, 157, 2, 'com_jdownloads.download.1', 'Project Submission Format', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1},"download":[]}');

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_associations`
--

CREATE TABLE IF NOT EXISTS `c39g0_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_banners`
--

CREATE TABLE IF NOT EXISTS `c39g0_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_banner_clients`
--

CREATE TABLE IF NOT EXISTS `c39g0_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `c39g0_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_categories`
--

CREATE TABLE IF NOT EXISTS `c39g0_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `c39g0_categories`
--

INSERT INTO `c39g0_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 13, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 63, 1, 11, 12, 1, 'imges', 'com_content', 'imges', 'imges', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 327, '2015-12-22 06:36:07', 327, '2015-12-22 06:39:12', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_contact_details`
--

CREATE TABLE IF NOT EXISTS `c39g0_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_content`
--

CREATE TABLE IF NOT EXISTS `c39g0_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `c39g0_content`
--

INSERT INTO `c39g0_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 54, 'publications', 'publications', '<p class="under-costruction">Under Construction</p>', '', 1, 2, '2015-12-22 05:53:26', 327, '', '2015-12-28 10:58:13', 327, 0, '0000-00-00 00:00:00', '2015-12-22 05:53:26', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 7, '', '', 1, 44, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 55, 'Contact', 'contact', '<div>\r\n<div class="map-contact"><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1980.3318764693076!2d79.8433140412136!3d6.930733248024271!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae25a2d744fbcdb%3A0x8cd0e37d1db27611!2sDepartment+of+National+Planning%2C+General+Treasury!5e0!3m2!1sen!2s!4v1451404962779" width="100%" height="322" frameborder="0" allowfullscreen=""></iframe></div>\r\n<div class="contact-details">\r\n<div class="contact-type first"><img src="images/contactIcon/home.png" alt="" width="50" height="50" /> The Secretariat,<br /> 1st Floor,<br /> Colombo 01.</div>\r\n<div class="contact-type"><img src="images/contactIcon/4n.png" alt="" width="50" height="50" /> +94-11-2484612<br /> +94-11-2484613</div>\r\n<div class="contact-type"><img src="images/contactIcon/fax2.png" alt="" width="50" height="50" /> +94-11-2448063<br /> +94-11-2431620</div>\r\n<div class="contact-type last"><img src="images/contactIcon/mail.png" alt="" width="50" height="50" /> <span class="our-email">dgnp@npd.treasury.gov.lk</span></div>\r\n</div>\r\n</div>\r\n<table class="contact-more" border="1">\r\n<tbody>\r\n<tr><th width="284">Position</th><th width="266">Name</th><th width="222">Phone</th><th width="109">Res</th></tr>\r\n<tr>\r\n<td>Department of National Planning<br />Director General</td>\r\n<td>Mr. S.S.Mudalige</td>\r\n<td>+94-11-2484593/+94-11-2484566</td>\r\n<td>+94-11-2719590</td>\r\n</tr>\r\n<tr>\r\n<td>Additional Director General<br />(Public Investment &amp; Diagnostic Review)</td>\r\n<td>Mrs. M.Gangatharan</td>\r\n<td>+94-11-2484576</td>\r\n<td>+94-11-2584881</td>\r\n</tr>\r\n<tr>\r\n<td>Additional Director General<br />(Policy Development )</td>\r\n<td>Mrs.J.M.S.D. Rathnayaka</td>\r\n<td>+94-11-2484586</td>\r\n<td>+94-11-2608447</td>\r\n</tr>\r\n<tr>\r\n<td>Additional Director General<br />(Project Review )</td>\r\n<td>Mr.K.D.S.R.Perera</td>\r\n<td>+94-11-2484567</td>\r\n<td>+94-34-2221396</td>\r\n</tr>\r\n<tr>\r\n<td colspan="4" bgcolor="#ECEEEA">Agriculture, Irrigation, Land, Livestock and Fisheries</td>\r\n</tr>\r\n<tr>\r\n<td>Director</td>\r\n<td>Mr. Rohitha Wickramarathna</td>\r\n<td>+94-11-2484608</td>\r\n<td>+94-38-2243501</td>\r\n</tr>\r\n<tr>\r\n<td>Assistant Director<br />(Agriculture)</td>\r\n<td>Ms: T.Y.L. Munasinghe</td>\r\n<td>+94-11-2484920</td>\r\n<td>-</td>\r\n</tr>\r\n<tr>\r\n<td>Assistant Director<br />(Irrigation &amp; Land)</td>\r\n<td>Mr: P.M.S. Jayathilaka</td>\r\n<td>+94-11-2484860</td>\r\n<td>-</td>\r\n</tr>\r\n<tr>\r\n<td>Assistant Director<br />(Fisheries &amp; Livestock)</td>\r\n<td>Mrs: H.K.T. Gunawardhana</td>\r\n<td>+94-11-2484585</td>\r\n<td>-</td>\r\n</tr>\r\n<tr>\r\n<td>Assistant Director<br />(Plantation)</td>\r\n<td>Mrs: M.A. Sudarshani Dabarera</td>\r\n<td>+94-11-2484927</td>\r\n<td>-</td>\r\n</tr>\r\n<tr>\r\n<td colspan="4" bgcolor="#ECEEEA">Regional Development &amp; Social Protection</td>\r\n</tr>\r\n<tr>\r\n<td>Director</td>\r\n<td>Mr. T.M.J.Bandara</td>\r\n<td>+94-11-2484573</td>\r\n<td>+94-37-2232893</td>\r\n</tr>\r\n<tr>\r\n<td>Assistant Director<br />(Social Protection)</td>\r\n<td>Mrs: D.A.. Niharepola</td>\r\n<td>+94-11-2484928</td>\r\n<td>-</td>\r\n</tr>\r\n<tr>\r\n<td>Assistant Director<br />(Regional Development)</td>\r\n<td>Mrs: Chandaniee Ramasinghe</td>\r\n<td>+94-11-2484590</td>\r\n<td>-</td>\r\n</tr>\r\n<tr>\r\n<td colspan="4" bgcolor="#ECEEEA">Health, Indigenous Medicine, Sports, Culture, Religion and National Integration</td>\r\n</tr>\r\n<tr>\r\n<td>Director</td>\r\n<td>Mrs. C.Senanayake</td>\r\n<td>+94-11-2484915</td>\r\n<td>+94-11-3184030</td>\r\n</tr>\r\n<tr>\r\n<td>Assistant Director<br /> (Health, Indigenous Medicine)</td>\r\n<td>Mrs: Dilani Peiris</td>\r\n<td>+94-11-2484908</td>\r\n<td>-</td>\r\n</tr>\r\n<tr>\r\n<td>Assistant Director<br />(Culture, Religion&amp; National Integration)</td>\r\n<td>Mrs: D.H.R.D.Wijewardena</td>\r\n<td>+94-11-2484609</td>\r\n<td>-</td>\r\n</tr>\r\n<tr>\r\n<td colspan="4" bgcolor="#ECEEEA">Infrastructure Development &amp; Environment</td>\r\n</tr>\r\n<tr>\r\n<td>Director<br /> ( Road, Ports &amp; Transport )</td>\r\n<td>Mr. Mallawarachchi</td>\r\n<td>+94-11-2484597</td>\r\n<td>+94-34-2281079</td>\r\n</tr>\r\n<tr>\r\n<td colspan="4" bgcolor="#ECEEEA">(Water, Housing and Urban Development)</td>\r\n</tr>\r\n<tr>\r\n<td>Director</td>\r\n<td>Mr. M.F.A. Mubarak</td>\r\n<td>+94-11-2484875</td>\r\n<td>+94-11-2589629</td>\r\n</tr>\r\n<tr>\r\n<td>Assistant Director<br />(Roads &amp; Transport)</td>\r\n<td>Mr: Priyankara Jayarathna</td>\r\n<td>+94-11-2484921</td>\r\n<td>-</td>\r\n</tr>\r\n<tr>\r\n<td>Assistant Director<br />(Port &amp; Aviation)</td>\r\n<td>Mrs D.N.Manorathne</td>\r\n<td>+94-11-2484969</td>\r\n<td>-</td>\r\n</tr>\r\n<tr>\r\n<td>Assistant Director<br />(Housing &amp; Urban Development)</td>\r\n<td>Miss.U.A.W. L. Sumanasekara</td>\r\n<td>+94-11-2484804</td>\r\n<td>-</td>\r\n</tr>\r\n<tr>\r\n<td>Assistant Director<br />(Water Supply)</td>\r\n<td>Mrs: K.A.H.K.Perera</td>\r\n<td>+94-11-2484872</td>\r\n<td>-</td>\r\n</tr>\r\n<tr>\r\n<td>Assistant Director<br />(Environment)</td>\r\n<td>Mr: K.B.S.S.Fernando</td>\r\n<td>+94-11-2484562</td>\r\n<td> </td>\r\n</tr>\r\n<tr>\r\n<td>Assistant Director<br />(Waster Management)</td>\r\n<td>Mrs. W.M.Hansani</td>\r\n<td>+94-11-2484977</td>\r\n<td>-</td>\r\n</tr>\r\n<tr>\r\n<td colspan="4" bgcolor="#ECEEEA">Education, Higher Education &amp; Skills Development / Human Capital Development</td>\r\n</tr>\r\n<tr>\r\n<td>Director</td>\r\n<td>Mr. T.A.D.D.Pramarathne</td>\r\n<td>+94-11-2484922</td>\r\n<td>+94-11-2705946</td>\r\n</tr>\r\n<tr>\r\n<td>Assistant Director<br />(Skills Development)</td>\r\n<td>Mrs: Dilrukshi Samarakoon</td>\r\n<td>+94-11-2484783</td>\r\n<td>-</td>\r\n</tr>\r\n<tr>\r\n<td>Assistant Director<br />(Education)</td>\r\n<td>Ms: P.A.N.Abeysekara</td>\r\n<td>+94-11-2484925</td>\r\n<td>-</td>\r\n</tr>\r\n<tr>\r\n<td>Assistant Director<br />(Higher Education &amp; Technology &amp; Research)</td>\r\n<td>Mrs: K.D.C.Thamarasee</td>\r\n<td>+94-11-2484575</td>\r\n<td>-</td>\r\n</tr>\r\n<tr>\r\n<td>Public Management &amp; Environment<br />Assistant Director<br />(Public Management)</td>\r\n<td>Mrs: P.H.Chandima</td>\r\n<td>+94-11-2484592</td>\r\n<td>-</td>\r\n</tr>\r\n<tr>\r\n<td colspan="4" bgcolor="#ECEEEA">Macro Economic Planning</td>\r\n</tr>\r\n<tr>\r\n<td>Director</td>\r\n<td>Mr. T.M.J.Bandara</td>\r\n<td>+94-11-2484573</td>\r\n<td>+94-37-2232893</td>\r\n</tr>\r\n<tr>\r\n<td>Assistant Director<br />(Macro Planning)</td>\r\n<td>Mr. L.H.M.B.R.B.Lansakara</td>\r\n<td>+94-11-2484852</td>\r\n<td>-</td>\r\n</tr>\r\n<tr>\r\n<td colspan="4" bgcolor="#ECEEEA">Industries &amp; Trade</td>\r\n</tr>\r\n<tr>\r\n<td>Director</td>\r\n<td>Mrs. A.K. Gunasekara</td>\r\n<td>+94-11-2484591</td>\r\n<td>+94-11-2923124</td>\r\n</tr>\r\n<tr>\r\n<td>Assistant Director<br />(Industry &amp; Trade)</td>\r\n<td>Mr: R.D.A.Maithreerathna</td>\r\n<td>+94-11-2484784</td>\r\n<td>-</td>\r\n</tr>\r\n<tr>\r\n<td>Assistant Director<br />(Tourism)</td>\r\n<td>Mrs: W.L.P. Ferando</td>\r\n<td>+94-11-2484924</td>\r\n<td>-</td>\r\n</tr>\r\n<tr>\r\n<td colspan="4" bgcolor="#ECEEEA">Power &amp; Energy and Decentralized Budget</td>\r\n</tr>\r\n<tr>\r\n<td>Director</td>\r\n<td>Mrs. T.Prassanth</td>\r\n<td>+94-11-2484613</td>\r\n<td>+94-11-2726073</td>\r\n</tr>\r\n<tr>\r\n<td>Assistant Director<br />(Power &amp; Energy)</td>\r\n<td>Mr: R.K.L.Jagoda</td>\r\n<td>+94-11-2484866</td>\r\n<td>-</td>\r\n</tr>\r\n<tr>\r\n<td>Assistant Director<br />(Decentralized Budget )</td>\r\n<td>Mrs: Chandaniee Ramasinghe</td>\r\n<td>+94-11-2484590</td>\r\n<td>-</td>\r\n</tr>\r\n<tr>\r\n<td colspan="4" bgcolor="#ECEEEA">Administration Branch</td>\r\n</tr>\r\n<tr>\r\n<td>Director</td>\r\n<td>Mrs. T. Prassanth</td>\r\n<td>+94-11-2484613</td>\r\n<td>+94-11-2726073</td>\r\n</tr>\r\n<tr>\r\n<td>Chief Management Assistant</td>\r\n<td>Mrs.K.G.P Damayanthi</td>\r\n<td>+94-11-2484612</td>\r\n<td>-</td>\r\n</tr>\r\n<tr>\r\n<td colspan="4" bgcolor="#ECEEEA">Accounts Branch</td>\r\n</tr>\r\n<tr>\r\n<td>Director</td>\r\n<td>Miss. N.Wijeweera</td>\r\n<td>+94-11-2484610</td>\r\n<td>+94-11-2896152</td>\r\n</tr>\r\n<tr>\r\n<td>Development Information Center<br />Assistant Director</td>\r\n<td>Mrs. D.H.R.D.Wijewardana</td>\r\n<td>+94-11-2484609</td>\r\n<td>-</td>\r\n</tr>\r\n<tr>\r\n<td>Development Officer</td>\r\n<td>Mrs.Kanchana Jayasekara</td>\r\n<td>+94-11-2484931</td>\r\n<td>-</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 2, '2015-12-22 05:59:45', 327, '', '2015-12-30 12:39:42', 327, 0, '0000-00-00 00:00:00', '2015-12-22 05:59:45', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 70, 6, '', '', 1, 189, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 56, 'Sector Policies', 'sector-policies', '<p class="under-costruction">Under Construction</p>', '', 1, 2, '2015-12-22 06:01:04', 327, '', '2015-12-28 10:58:29', 327, 0, '0000-00-00 00:00:00', '2015-12-22 06:01:04', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 5, '', '', 1, 19, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 57, 'Links', 'links', '', '', 1, 2, '2015-12-22 06:01:20', 327, '', '2015-12-22 06:01:20', 0, 0, '0000-00-00 00:00:00', '2015-12-22 06:01:20', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 4, '', '', 1, 7, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 58, 'Circulars', 'circulars', '<p class="under-costruction">Under Construction</p>', '', 1, 2, '2015-12-22 06:01:39', 327, '', '2015-12-28 10:58:21', 327, 0, '0000-00-00 00:00:00', '2015-12-22 06:01:39', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 3, '', '', 1, 35, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 59, 'Description of Photo Gallery', 'description-of-photo-gallery', '', '', 1, 2, '2015-12-22 06:01:59', 327, '', '2015-12-22 06:01:59', 0, 0, '0000-00-00 00:00:00', '2015-12-22 06:01:59', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 6, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 60, 'Project Submission Format', 'project-submission-format', '<table class="download-forms">\r\n<tbody>\r\n<tr>\r\n<td>Project Submition Format</td>\r\n<td><a href="images/files/projectSubmissionFormat.doc"><img src="images/Download1.png" alt="" width="58" height="58" /></a> </td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>', '', 1, 2, '2015-12-22 06:02:17', 327, '', '2015-12-28 15:51:32', 327, 0, '0000-00-00 00:00:00', '2015-12-22 06:02:17', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_vote":"0","show_hits":"0","show_noauth":"0","alternative_readmore":"","article_layout":"","show_publishing_options":"0","show_article_options":"0","show_urls_images_backend":"0","show_urls_images_frontend":"0"}', 13, 1, '', '', 1, 53, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 64, 'slide one', 'slide-one', '<p><img src="images/slides/3.jpg" alt="" width="417" height="174" /></p>\r\n<p>Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one DescriptionSlide one Description Slide one Description v Slide one Description v v Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one Description Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description</p>\r\n<p>Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one DescriptionSlide one Description Slide one Description v Slide one Description v v Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one Description Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one DescriptionSlide one Description Slide one Description v Slide one Description v v Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one Description Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description</p>\r\n<p> </p>', '', 1, 8, '2015-12-22 06:39:21', 327, '', '2015-12-22 06:39:46', 327, 0, '0000-00-00 00:00:00', '2015-12-22 06:39:21', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 65, 'Slide two', 'slide-two', '<p><img src="images/slides/1.jpg" alt="" width="468" height="194" /></p>\r\n<p>Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one DescriptionSlide one Description Slide one Description v Slide one Description v v Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one Description Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one DescriptionSlide one Description Slide one Description v Slide one Description v v Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one Description Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description</p>\r\n<p>Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one DescriptionSlide one Description Slide one Description v Slide one Description v v Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one Description Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one DescriptionSlide one Description Slide one Description v Slide one Description v v Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one Description Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description</p>', '', 1, 8, '2015-12-22 06:40:26', 327, '', '2015-12-22 06:40:26', 0, 0, '0000-00-00 00:00:00', '2015-12-22 06:40:26', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 66, 'Slide Three', 'slide-three', '<p><img src="images/slides/2.jpg" alt="" width="451" height="187" /></p>\r\n<p>Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one DescriptionSlide one Description Slide one Description v Slide one Description v v Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one Description Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description</p>\r\n<p>Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one DescriptionSlide one Description Slide one Description v Slide one Description v v Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one Description Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description</p>\r\n<p>Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one DescriptionSlide one Description Slide one Description v Slide one Description v v Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one Description Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one DescriptionSlide one Description Slide one Description v Slide one Description v v Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one Description Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description</p>', '', 1, 8, '2015-12-22 06:40:59', 327, '', '2015-12-22 06:40:59', 0, 0, '0000-00-00 00:00:00', '2015-12-22 06:40:59', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 73, 'Home', 'home', '<div class="home-content">\r\n<div>\r\n<div class="heading">\r\n<p class="home-h">National Planning</p>\r\n<p class="home-c">The Department of National Planning as a part of the apex Ministry of National Policies and Economic Affairs committed to policy development, planning and implementation, to accelerate Sri Lanka''s economic growth and social progress. This Department provides a national perspective to policies, programmes and projects, in contrast to the sectoral or regional perspectives of other institutions. It is located in the Ministry of Finance Secretariat, which helps maintain close interaction with the Treasury and its Departments.</p>\r\n</div>\r\n</div>\r\n<div class="nested-home">\r\n<div class="vision">\r\n<div class="heading">\r\n<p class="home-h">Our Vision</p>\r\n<p class="home-c">To be most competent development advsior and facilitator to the nation.</p>\r\n</div>\r\n</div>\r\n<div class="mission">\r\n<div class="heading">\r\n<p class="home-h">Our Mission</p>\r\n<p class="home-c">Stimulate Socio-economic development by guiding the public sector for appropriate policies, programmes and strategies and provide enabling enviroment for the private sector incorporating adequate safeguard to ensure equity and improve living standards.</p>\r\n<p class="home-c">This end, the highest level of professionalism will be developed and maintained through continuous upgrading of skills and knowledge.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '', 1, 2, '2015-12-22 14:42:37', 327, '', '2015-12-28 05:15:34', 327, 0, '0000-00-00 00:00:00', '2015-12-22 14:42:37', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 10, 0, '', '', 1, 223, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `c39g0_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `c39g0_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_content_rating`
--

CREATE TABLE IF NOT EXISTS `c39g0_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_content_types`
--

CREATE TABLE IF NOT EXISTS `c39g0_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `c39g0_content_types`
--

INSERT INTO `c39g0_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(14, 'jDownloads Download', 'com_jdownloads.download', '{"special":{"dbtable":"#__jdownloads_files","key":"file_id","type":"Download","prefix":"JdownloadsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Download","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"file_id","core_title":"file_title","core_state":"published","core_alias":"file_alias","core_created_time":"null","core_modified_time":"null","core_body":"description", "core_hits":"views","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"cat_id", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"null","rgt":"null","level":"null","path":"null","extension":"null","note":"null"}}', 'JdownloadsHelperRoute::getDownloadRoute', NULL),
(15, 'jDownloads Category', 'com_jdownloads.category', '{"special":{"dbtable":"#__jdownloads_categories","key":"id","type":"Category","prefix":"JdownloadsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Category","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"views","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"null","extension":"null","note":"null"}}', 'JdownloadsHelperRoute::getCategoryRoute', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `c39g0_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_extensions`
--

CREATE TABLE IF NOT EXISTS `c39g0_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10016 ;

--
-- Dumping data for table `c39g0_extensions`
--

INSERT INTO `c39g0_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"1","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"0","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":"","filename":"simplepie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"27462e979297425946d4ee36d4e00cf8"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.6","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2014","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.1.7","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"skin":"0","skin_admin":"0","mode":"1","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"applet","valid_elements":"","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","resize_horizontal":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","image_advtab":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `c39g0_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.3","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.3","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"December 2015","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.6","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'Car Deluxe', 'template', 'cardeluxe', '', 0, 1, 1, 0, '{"name":"Car Deluxe","type":"template","creationDate":"May 2013","author":"Web Design Builders","copyright":"Web Design Builders","authorEmail":"mail@webdesignbuilders.net","authorUrl":"http:\\/\\/www.webdesignbuilders.net","version":"1.2","description":"<div style=\\"border:1px solid #dedede; padding:15px; text-align:center; margin-bottom:15px;\\"><h1 style=\\"margin:0px;\\">Car Deluxe<\\/h1><h4 style=\\"margin:0px;\\">By <a href=\\"http:\\/\\/www.webdesignbuilders.net\\">Web Design Builders<\\/a><\\/h4>Joomla 3x Templates<br \\/>Free License<br \\/>Support : <a href=\\"mailto:mail@webdesignbuilders.net\\">mail@webdesignbuilders.net<\\/a><\\/div>","group":"","filename":"templateDetails"}', '{"selectlogo":"templates\\/cardeluxe\\/images\\/logo.png","selectfont":"ff1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'ARI Image Slider', 'module', 'mod_ariimageslider', '', 0, 1, 0, 0, '{"name":"ARI Image Slider","type":"module","creationDate":"November 2015","author":"ARI Soft","copyright":"ARI Soft","authorEmail":"info@ari-soft.com","authorUrl":"www.ari-soft.com","version":"2.2.0","description":"ARI_IMAGE_SLIDER_MODULE","group":"","filename":"mod_ariimageslider"}', '{"width":"300","height":"220","responsive":"1","theme":"default","sourceHeader":"AIM_LOADIMAGESFROM","subdirLevel":"0","subdir":"0","imgNumber":"0","sortBy":"","sortDir":"asc","lpHeader":"AIM_LIGHTBOX_PARAMS","lightboxEngine":"","lightbox_width":"450","lightbox_height":"300","lightbox_grouping":"1","lightbox_bgColor":"","spHeader":"AIM_SLIDER_PARAMS","opt_manualAdvance":"0","fixTransparentBg":"0","opt_disableClick":"0","opt_effect":"random","opt_slices":"15","opt_boxCols":"8","opt_boxRows":"4","opt_animSpeed":"500","opt_pauseTime":"3000","opt_startSlide":"0","opt_randomStart":"0","showNav":"1","opt_controlNav":"1","opt_keyboardNav":"1","opt_pauseOnHover":"1","opt_stopOnEnd":"0","sspHeader":"AIM_SLIDES_PARAMS","linkTarget":"_self","customLinkTarget":"","i18n":"0","descrFile":"ariimageslider.ini","defaultDescription":"","defaultLink":"","imglist_useThumbs":"0","imglist_thumbWidth":"150","imglist_thumbHeight":"","imglist_thumbPath":"","opt_controlNavThumbs":"0","imglist_navThumbWidth":"75","imglist_navThumbHeight":"","imglist_navThumbPath":"","loadMethod":"ready","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'plg_editors-xtd_phocadownload', 'plugin', 'phocadownload', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_phocadownload","type":"plugin","creationDate":"31\\/10\\/2015","author":"Jan Pavelka (www.phoca.cz)","copyright":"Jan Pavelka","authorEmail":"","authorUrl":"www.phoca.cz","version":"3.1.0","description":"PLG_EDITORS-XTD_PHOCADOWNLOAD_DESCRIPTION","group":"","filename":"phocadownload"}', '{"enable_frontend":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'com_jDownloads', 'component', 'com_jdownloads', '', 1, 1, 0, 0, '{"name":"com_jDownloads","type":"component","creationDate":"2015-12-19","author":"Arno Betz","copyright":"(C) 2007-2015 www.jdownloads.com","authorEmail":"info@jdownloads.com","authorUrl":"http:\\/\\/www.jdownloads.com","version":"3.2.41","description":"","group":"","filename":"jdownloads"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'plg_system_jdownloads', 'plugin', 'jdownloads', 'system', 0, 1, 1, 0, '{"name":"plg_system_jdownloads","type":"plugin","creationDate":"2015-11-19","author":"Arno Betz","copyright":"Copyright (C) 2007 - 2014 by Arno Betz","authorEmail":"info@jdownloads.com","authorUrl":"www.jdownloads.com","version":"3.2.41","description":"PLG_SYSTEM_JDOWNLOADS_PLUGIN_DESCRIPTION","group":"","filename":"jdownloads"}', '{"use_hider":"0","reduce_log_data_sets_to":"","rules":"option=com_jdownloads","enable_again_after_dispatch":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'jDownloads Example', 'plugin', 'example_plugin_jdownloads', 'jdownloads', 0, 0, 1, 0, '{"name":"jDownloads Example","type":"plugin","creationDate":"2014-03-28","author":"Arno Betz","copyright":"Copyright (C) 2014 Arno Betz","authorEmail":"info@jdownloads.com","authorUrl":"www.jdownloads.com","version":"3.2","description":"Example Plugin to handle events triggered by jDownloads and used by other extensions.","group":"","filename":"example_plugin_jdownloads"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'plg_search_jdownloads', 'plugin', 'jdownloads', 'search', 0, 0, 1, 0, '{"name":"plg_search_jdownloads","type":"plugin","creationDate":"2015-04-29","author":"Arno Betz","copyright":"Copyright (C) 2014 Arno Betz","authorEmail":"info@jdownloads.com","authorUrl":"www.jdownloads.com","version":"3.2.32","description":"PLG_SEARCH_JDOWNLOADS_XML_DESCRIPTION","group":"","filename":"jdownloads"}', '{"search_limit":"50"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'Button - jDownloads Content', 'plugin', 'jdownloads', 'editors-xtd', 0, 0, 1, 0, '{"name":"Button - jDownloads Content","type":"plugin","creationDate":"2015-09-18","author":"Arno Betz","copyright":"Copyright (C) 2015 Arno Betz","authorEmail":"info@jdownloads.com","authorUrl":"www.jdownloads.com","version":"3.2.38","description":"PLG_EDITORS-XTD_JDOWNLOADS_DESCRIPTION","group":"","filename":"jdownloads"}', '{"frontend":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'Content - jDownloads', 'plugin', 'jdownloads', 'content', 0, 0, 1, 0, '{"name":"Content - jDownloads","type":"plugin","creationDate":"2015-11-05","author":"Arno Betz","copyright":"(c) Arno Betz 2015","authorEmail":"info@jdownloads.com","authorUrl":"www.jdownloads.com","version":"3.2.41","description":"PLG_CONTENT_JDOWNLOADS_XML_DESC","group":"","filename":"jdownloads"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'jDownloads Latest', 'module', 'mod_jdownloads_latest', '', 0, 1, 0, 0, '{"name":"jDownloads Latest","type":"module","creationDate":"2015-09-17","author":"Arno Betz","copyright":"(C) 2007-2015 Arno Betz. All rights reserved.","authorEmail":"info@jdownloads.com","authorUrl":"www.jDownloads.com","version":"3.2.38","description":"MOD_JDOWNLOADS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_jdownloads_latest"}', '{"text_before":"","text_after":"","spacer1":"","cat_id":"","sum_view":"5","sum_char":"","short_char":"","short_version":"","detail_view":"1","view_tooltip":"1","view_tooltip_length":"100","spacer2":"","view_date":"1","view_date_same_line":"0","date_format":"","date_alignment":"left","spacer3":"","view_pics":"1","view_pics_size":"18","view_numerical_list":"0","spacer4":"","view_thumbnails":"0","view_thumbnails_dummy":"1","view_thumbnails_size":"100","spacer5":"","cat_show":"1","cat_show_type":"all","cat_show_text":"","cat_show_text_color":"#808080","cat_show_text_size":"8pt","cat_show_as_link":"1","spacer6":"","alignment":"left","moduleclass_sfx":"","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'jDownloads Top', 'module', 'mod_jdownloads_top', '', 0, 1, 0, 0, '{"name":"jDownloads Top","type":"module","creationDate":"2015-09-17","author":"Arno Betz","copyright":"(C) 2009-2015 by Arno Betz. All rights reserved.","authorEmail":"info@jDownloads.com","authorUrl":"www.jDownloads.com","version":"3.2.38","description":"MOD_JDOWNLOADS_TOP_XML_DESCRIPTION","group":"","filename":"mod_jdownloads_top"}', '{"text_before":"","text_after":"","spacer1":"","cat_id":"","sum_view":"5","sum_char":"","short_char":"","short_version":"","detail_view":"1","view_tooltip":"1","view_tooltip_length":"100","spacer2":"","view_hits":"1","hits_label":"","view_hits_same_line":"1","hits_alignment":"left","spacer3":"","view_pics":"1","view_pics_size":"18","view_numerical_list":"0","spacer4":"","view_thumbnails":"0","view_thumbnails_dummy":"1","view_thumbnails_size":"100","spacer5":"","cat_show":"1","cat_show_type":"all","cat_show_text":"","cat_show_text_color":"#808080","cat_show_text_size":"8pt","cat_show_as_link":"1","spacer6":"","alignment":"left","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'jDownloads Last Updated', 'module', 'mod_jdownloads_last_updated', '', 0, 1, 0, 0, '{"name":"jDownloads Last Updated","type":"module","creationDate":"2015-09-17","author":"Arno Betz","copyright":"(C) 2009-2015 Arno Betz. All rights reserved.","authorEmail":"info@jdownloads.com","authorUrl":"www.jDownloads.com","version":"3.2.38","description":"MOD_JDOWNLOADS_LAST_UPDATED_XML_DESCRIPTION","group":"","filename":"mod_jdownloads_last_updated"}', '{"text_before":"","text_after":"","spacer1":"","cat_id":"","sum_view":"5","sum_char":"","short_char":"","short_version":"","detail_view":"1","view_tooltip":"1","view_tooltip_length":"100","spacer2":"","view_date":"1","view_date_same_line":"0","view_date_text":"","date_format":"","date_alignment":"left","spacer3":"","view_pics":"1","view_pics_size":"18","view_numerical_list":"0","spacer4":"","view_thumbnails":"0","view_thumbnails_dummy":"1","view_thumbnails_size":"100","spacer5":"","cat_show":"1","cat_show_type":"all","cat_show_text":"","cat_show_text_color":"#808080","cat_show_text_size":"8pt","cat_show_as_link":"1","spacer6":"","alignment":"left","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 'jDownloads Most Recently Downloaded', 'module', 'mod_jdownloads_most_recently_downloaded', '', 0, 1, 0, 0, '{"name":"jDownloads Most Recently Downloaded","type":"module","creationDate":"2015-09-17","author":"Arno Betz","copyright":"(C) 2008\\/2015 Arno Betz. All rights reserved.","authorEmail":"info@jdownloads.com","authorUrl":"www.jDownloads.com","version":"3.2.38","description":"MOD_JDOWNLOADS_MOST_RECENTLY_DOWNLOADED_DESCRIPTION","group":"","filename":"mod_jdownloads_most_recently_downloaded"}', '{"text_before":"","text_after":"","cat_id":"","sum_view":"5","sum_char":"25","short_char":"","short_version":"","detail_view":"1","view_tooltip":"1","view_tooltip_length":"200","view_date":"1","view_date_same_line":"0","view_date_text":"","date_format":"Y-m-d H:i:s","date_alignment":"left","view_user":"1","view_user_by":"","view_pics":"1","view_pics_size":"18","view_numerical_list":"0","cat_show":"1","cat_show_type":"all","cat_show_text":"","cat_show_text_color":"#808080","cat_show_text_size":"8pt","cat_show_as_link":"1","alignment":"left","moduleclass_sfx":"","spacer6":"","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 'jDownloads Stats', 'module', 'mod_jdownloads_stats', '', 0, 1, 0, 0, '{"name":"jDownloads Stats","type":"module","creationDate":"2015-03-26","author":"Arno Betz","copyright":"(C) 2007-2015 Arno Betz. All rights reserved.","authorEmail":"info@jdownloads.com","authorUrl":"www.jDownloads.com","version":"3.2.31","description":"MOD_JDOWNLOADS_STATS_DESC","group":"","filename":"mod_jdownloads_stats"}', '{"text":"{en-GB}The download archive contains currently #1 Downloads in #2 Categories. To date, these have been downloaded #3 times.{\\/en-GB} {de-DE}Das Download Archiv enth\\u00e4lt aktuell #1 Dateien in #2 Kategorien. Bis heute wurden diese #3 mal heruntergeladen.{\\/de-DE}","use_all_items":"0","value_color":"#990000","alignment":"left","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 'jDownloads Tree', 'module', 'mod_jdownloads_tree', '', 0, 1, 0, 0, '{"name":"jDownloads Tree","type":"module","creationDate":"2015-09-17","author":"Josh Prakash","copyright":"Copyright (C) 2008-2010 youthpole.com. All rights reserved.","authorEmail":"joshprakash@yahoo.com","authorUrl":"www.youthpole.com","version":"3.2.38","description":"MOD_JDOWNLOADS_TREE_XML_DESCRIPTION","group":"","filename":"mod_jdownloads_tree"}', '{"lengthc":"20","catoption":"1","catid":"","maxlevel":"0","view_amount_cat_items":"0","view_amount_items":"0","view_zero_values":"0","view_tooltip":"0","moduleclass_sfx":"","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 'jDownloads Related', 'module', 'mod_jdownloads_related', '', 0, 1, 0, 0, '{"name":"jDownloads Related","type":"module","creationDate":"2015-09-17","author":"Arno Betz","copyright":"(C) 2009-2015 by Arno Betz. All rights reserved.","authorEmail":"info@jDownloads.com","authorUrl":"www.jDownloads.com","version":"3.2.38","description":"MOD_JDOWNLOADS_RELATED_XML_DESCRIPTION","group":"","filename":"mod_jdownloads_related"}', '{"text_before":"","text_after":"","title":"","sum_view":"5","sum_char":"","short_char":"","short_version":"","detail_view":"1","view_tooltip":"1","view_tooltip_length":"250","view_not_found":"1","view_hits":"1","hits_label":"","view_hits_same_line":"1","hits_alignment":"left","view_date":"0","view_date_same_line":"0","date_format":"","date_alignment":"left","view_pics":"1","view_pics_size":"18","view_numerical_list":"0","view_thumbnails":"0","view_thumbnails_dummy":"1","view_thumbnails_size":"100","cat_show":"1","cat_show_type":"all","cat_show_text":"","cat_show_text_color":"#808080","cat_show_text_size":"8pt","cat_show_as_link":"1","show_child_category_downloads":"0","levels":"1","download_ordering":"a.title","download_ordering_direction":"ASC","layout":"","moduleclass_sfx":"","alignment":"left","spacer6":"","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_finder_filters`
--

CREATE TABLE IF NOT EXISTS `c39g0_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_finder_links`
--

CREATE TABLE IF NOT EXISTS `c39g0_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `c39g0_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `c39g0_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `c39g0_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `c39g0_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `c39g0_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `c39g0_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `c39g0_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `c39g0_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `c39g0_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `c39g0_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `c39g0_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `c39g0_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `c39g0_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `c39g0_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `c39g0_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `c39g0_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `c39g0_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `c39g0_finder_taxonomy`
--

INSERT INTO `c39g0_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `c39g0_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_finder_terms`
--

CREATE TABLE IF NOT EXISTS `c39g0_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `c39g0_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `c39g0_finder_terms_common`
--

INSERT INTO `c39g0_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `c39g0_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `c39g0_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_finder_types`
--

CREATE TABLE IF NOT EXISTS `c39g0_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_jdownloads_categories`
--

CREATE TABLE IF NOT EXISTS `c39g0_jdownloads_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_dir` text NOT NULL,
  `cat_dir_parent` text NOT NULL,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `access` int(10) unsigned DEFAULT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `robots` varchar(255) NOT NULL,
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL,
  `notes` text NOT NULL,
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `password_md5` varchar(100) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checked_out` (`checked_out`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `c39g0_jdownloads_categories`
--

INSERT INTO `c39g0_jdownloads_categories` (`id`, `cat_dir`, `cat_dir_parent`, `parent_id`, `lft`, `rgt`, `level`, `title`, `alias`, `description`, `pic`, `access`, `metakey`, `metadesc`, `robots`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `language`, `notes`, `views`, `params`, `password`, `password_md5`, `ordering`, `published`, `checked_out`, `checked_out_time`, `asset_id`) VALUES
(1, '', '', 0, 0, 1, 0, 'ROOT', 'root', '', '', 1, '', '', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '*', '', 0, '', '', '', 0, 1, 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_jdownloads_config`
--

CREATE TABLE IF NOT EXISTS `c39g0_jdownloads_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `setting_name` varchar(64) NOT NULL DEFAULT '',
  `setting_value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=267 ;

--
-- Dumping data for table `c39g0_jdownloads_config`
--

INSERT INTO `c39g0_jdownloads_config` (`id`, `setting_name`, `setting_value`) VALUES
(1, 'files.uploaddir', 'C:/xampp/htdocs/dnp/jdownloads'),
(2, 'global.datetime', 'Y-m-d'),
(3, 'files.autodetect', '1'),
(4, 'send.mailto', 'info@yourwebsite.com'),
(5, 'send.mailto.option', '0'),
(6, 'send.mailto.betreff', 'Information about the downloads'),
(7, 'send.mailto.from', 'webmaster@yourwebsite.com'),
(8, 'send.mailto.fromname', 'jDownloads'),
(9, 'send.mailto.html', '1'),
(10, 'zipfile.prefix', 'downloads_'),
(11, 'files.order', '0'),
(12, 'checkbox.top.text', '<b>Select all files: </b>'),
(13, 'downloads.titletext', ''),
(14, 'layouts.editor', '0'),
(15, 'licenses.editor', '1'),
(16, 'files.editor', '1'),
(17, 'categories.editor', '1'),
(18, 'info.icons.size', '20'),
(19, 'cat.pic.size', '48'),
(20, 'file.pic.size', '32'),
(21, 'offline', '0'),
(22, 'offline.text', '<table width="70%" align="center" cellspacing="0" cellpadding="20" border="1"><tr><td align="center"><h3>At the moment the Downloads area is undergoing maintenance.<br /><br />Please try again in a few minutes.</h3><br /><img src="components/com_jdownloads/assets/images/offline.png" /></td></tr></table>'),
(23, 'system.list', '- Select -, Joomla 1.0, Joomla 1.5, Windows, Linux, MacIntosh, See description'),
(24, 'language.list', '- Select -, English, German, French, Italian, Spanish, Portuguese, Russian, Polish, Dutch, Turkish, Multilanguage, See description'),
(25, 'file.types.view', 'html,htm,txt,pdf,doc,jpg,jpeg,png,gif'),
(26, 'directories.autodetect', '1'),
(27, 'mail.cloaking', '1'),
(28, 'tempfile.delete.time', '20'),
(29, 'frontend.upload.active', '1'),
(30, 'allowed.upload.file.types', 'zip,rar'),
(31, 'allowed.upload.file.size', '2048'),
(32, 'upload.access', '0'),
(33, 'files.per.side', '10'),
(34, 'upload.form.text', ''),
(35, 'jd.header.title', 'Downloads'),
(36, 'files.per.side.be', '15'),
(37, 'last.log.message', ''),
(38, 'last.restore.log', ''),
(39, 'show.header.catlist', '1'),
(40, 'anti.leech', '0'),
(41, 'direct.download', '0'),
(42, 'days.is.file.new', '15'),
(43, 'picname.is.file.new', 'blue.png'),
(44, 'loads.is.file.hot', '100'),
(45, 'picname.is.file.hot', 'red.png'),
(46, 'download.pic.details', 'download_blue.png'),
(47, 'upload.auto.publish', '0'),
(48, 'cats.order', '0'),
(49, 'autopublish.founded.files', '0'),
(50, 'all.files.autodetect', '1'),
(51, 'file.types.autodetect', 'zip,rar,exe,pdf,doc,gif,jpg,png'),
(52, 'jcomments.active', '0'),
(53, 'fileplugin.defaultlayout', 'Standard Files Layout v2.5'),
(54, 'fileplugin.show_hot', '1'),
(55, 'fileplugin.show_new', '1'),
(56, 'fileplugin.enable_plugin', '1'),
(57, 'fileplugin.show_jdfiledisabled', '1'),
(58, 'fileplugin.layout_disabled', 'Standard Files Layout v2.5'),
(59, 'fileplugin.show_downloadtitle', '1'),
(60, 'fileplugin.offline_title', 'Downloads are disabled.'),
(61, 'fileplugin.offline_descr', 'If you are allowed to download, but you cannot download, please contact the webmaster.'),
(62, 'cat.pic.default.filename', 'folder.png'),
(63, 'file.pic.default.filename', 'zip.png'),
(64, 'jd.version', '3.2.41'),
(65, 'send.mailto.upload', 'info@yourwebsite.com'),
(66, 'send.mailto.option.upload', '0'),
(67, 'send.mailto.betreff.upload', 'A new file has been uploaded.'),
(68, 'send.mailto.from.upload', 'webmaster@yourwebsite.com'),
(69, 'send.mailto.fromname.upload', 'jDownloads'),
(70, 'send.mailto.html.upload', '1'),
(71, 'send.mailto.template.upload', 'File Upload Report<br /><br />Sender: {name}<br />E-Mail: {mail}<br />IP-Adress: {ip}<br /><br />Downloaded details<br /><br />Filename: {file_name}<br />Title: {file_title}<br />Description: {description}<br />Date: {date}<br /><br />Please do not respond directly to this email as it is automatically generated and you will not receive a reply.'),
(72, 'send.mailto.template.download', 'Download Notice.<br /><br />The following files were downloaded:<br />{file_list}<br /><br />Date and time: {date_time}<br />Name: {user_name}<br />Usergroup: {user_group}<br />User IP-Adress: {ip_address}<br /><br />Please do not respond directly to this email as it is automatically generated and you will not receive a reply.'),
(73, 'download.pic.mirror_1', 'mirror_blue1.png'),
(74, 'download.pic.mirror_2', 'mirror_blue2.png'),
(75, 'picname.is.file.updated', 'green.png'),
(76, 'days.is.file.updated', '15'),
(77, 'thumbnail.size.width', '125'),
(78, 'thumbnail.size.height', '125'),
(79, 'thumbnail.view.placeholder', '0'),
(80, 'thumbnail.view.placeholder.in.lists', '0'),
(81, 'option.navigate.bottom', '0'),
(82, 'option.navigate.top', '1'),
(83, 'view.category.info', '0'),
(84, 'save.monitoring.log', '1'),
(85, 'view.subheader', '1'),
(86, 'view.detailsite', '1'),
(87, 'check.leeching', '1'),
(88, 'allowed.leeching.sites', ''),
(89, 'block.referer.is.empty', '0'),
(90, 'fe.upload.view.author', '1'),
(91, 'fe.upload.view.author.url', '1'),
(92, 'fe.upload.view.release', '1'),
(93, 'fe.upload.view.price', '1'),
(94, 'fe.upload.view.license', '1'),
(95, 'fe.upload.view.language', '1'),
(96, 'fe.upload.view.system', '1'),
(97, 'fe.upload.view.pic.upload', '1'),
(98, 'fe.upload.view.desc.long', '1'),
(99, 'mp3.player.config', 'loop=0;showvolume=1;showstop=1;bgcolor1=006699;bgcolor2=66CCFF'),
(100, 'mp3.view.id3.info', '1'),
(101, 'use.php.script.for.download', '1'),
(102, 'mp3.info.layout', '<table max-width="300px" style="padding:5px; background-color:#FFFFDD;">\n<tr>\n  <td width="80px">{album_title}</td>\n  <td width="220px">{album}</td>\n</tr>\n<tr>\n  <td width="80px">{name_title}</td>\n  <td width="220px">{name}</td>\n</tr>\n<tr>\n  <td width="80px">{year_title}</td>\n  <td width="220px">{year}</td>\n</tr>\n<tr>\n  <td width="80px">{artist_title}</td>\n  <td width="220px">{artist}</td>\n</tr>\n<tr>\n  <td width="80px">{genre_title}</td>\n  <td width="220px">{genre}</td>\n</tr>\n<tr>\n  <td width="80px">{length_title}</td>\n  <td width="220px">{length}</td>\n</tr>\n</table>'),
(103, 'google.adsense.active', '0'),
(104, 'google.adsense.code', ''),
(105, 'countdown.active', '0'),
(106, 'countdown.start.value', '15'),
(107, 'countdown.text', ''),
(108, 'fe.upload.view.extern.file', '0'),
(109, 'fe.upload.view.select.file', '1'),
(110, 'fe.upload.view.desc.short', '1'),
(111, 'fix.upload.filename.blanks', '0'),
(112, 'fix.upload.filename.uppercase', '0'),
(113, 'fix.upload.filename.specials', '1'),
(114, 'use.report.download.link', '1'),
(115, 'send.mailto.report', ''),
(116, 'download.pic.files', 'download2.png'),
(117, 'view.sum.jcomments', '1'),
(118, 'be.new.files.order.first', '1'),
(119, 'downloads.footer.text', ''),
(120, 'view.back.button', '1'),
(121, 'create.auto.cat.dir', '1'),
(122, 'reset.counters', '0'),
(123, 'report.link.only.regged', '1'),
(124, 'view.ratings', '1'),
(125, 'rating.only.for.regged', '0'),
(126, 'view.also.download.link.text', '1'),
(127, 'auto.file.short.description', '0'),
(128, 'auto.file.short.description.value', '200'),
(129, 'view.jom.comment', '0'),
(130, 'use.lightbox.function', '1'),
(131, 'use.alphauserpoints', '0'),
(132, 'use.alphauserpoints.with.price.field', '0'),
(133, 'user.can.download.file.when.zero.points', '1'),
(134, 'user.message.when.zero.points', 'Sorry, you do not have enough points to allow downloading of this file. Please recharge your points account.'),
(135, 'limited.download.number.per.day', '0'),
(136, 'limited.download.reached.message', 'COM_JDOWNLOADS_FE_MESSAGE_AMOUNT_FILES_LIMIT'),
(137, 'download.pic.plugin', 'download2.png'),
(138, 'plugin.auto.file.short.description', '0'),
(139, 'plugin.auto.file.short.description.value', '200'),
(140, 'view.sort.order', '1'),
(141, 'activate.general.plugin.support', '0'),
(142, 'activate.download.log', '1'),
(143, 'categories.per.side', '5'),
(144, 'upload.access.group', '0'),
(145, 'redirect.after.download', '0'),
(146, 'use.tabs.type', '0'),
(147, 'additional.tab.title.1', 'Additional'),
(148, 'additional.tab.title.2', 'Additional'),
(149, 'additional.tab.title.3', 'Additional'),
(150, 'remove.field.title.when.empty', '0'),
(151, 'use.download.title.as.download.link', '0'),
(152, 'custom.field.1.title', ''),
(153, 'custom.field.2.title', ''),
(154, 'custom.field.3.title', ''),
(155, 'custom.field.4.title', ''),
(156, 'custom.field.5.title', ''),
(157, 'custom.field.6.title', ''),
(158, 'custom.field.7.title', ''),
(159, 'custom.field.8.title', ''),
(160, 'custom.field.9.title', ''),
(161, 'custom.field.10.title', ''),
(162, 'custom.field.11.title', ''),
(163, 'custom.field.12.title', ''),
(164, 'custom.field.13.title', ''),
(165, 'custom.field.14.title', ''),
(166, 'custom.field.1.values', ''),
(167, 'custom.field.2.values', ''),
(168, 'custom.field.3.values', ''),
(169, 'custom.field.4.values', ''),
(170, 'custom.field.5.values', ''),
(171, 'custom.field.6.values', ''),
(172, 'custom.field.7.values', ''),
(173, 'custom.field.8.values', ''),
(174, 'custom.field.9.values', ''),
(175, 'custom.field.10.values', ''),
(176, 'group.can.edit.fe', '0'),
(177, 'uploader.can.edit.fe', '0'),
(178, 'use.sef.with.file.titles', '1'),
(179, 'use.general.plugin.support.only.for.descriptions', '0'),
(180, 'com', ''),
(181, 'use.blocking.list', '0'),
(182, 'blocking.list', 'GOOGLE\r\n66.249.72.1 	crawl-66-249-72-1.googlebot.com\r\n66.249.71.153 	crawl-66-249-71-153.googlebot.com\r\n66.249.66.22 	crawl-66-249-66-22.googlebot.com\r\n66.249.71.19 	crawl-66-249-71-19.googlebot.com\r\n66.249.71.132 	crawl-66-249-71-132.googlebot.com \r\n66.249.71.36 	crawl-66-249-71-36.googlebot.com\r\n66.249.72.74 	crawl-66-249-72-74.googlebot.com\r\n66.249.72.199 	crawl-66-249-72-199.googlebot.com\r\n66.249.72.80 	crawl-66-249-72-80.googlebot.com\r\n66.249.66.215   crawl-66-249-66-215.googlebot.com\r\n66.249.67.122   crawl-66-249-67-122.googlebot.com\r\n66.249.67.98	crawl-66-249-67-98.googlebot.com\r\n66.249.66.65	crawl-66-249-66-65.googlebot.com\r\n66.249.66.169   crawl-66-249-66-169.googlebot.com\r\n66.249.71.27    crawl-66-249-71-27.googlebot.com\r\n66.249.72.155   crawl-66-249-72-155.googlebot.com\r\n66.249.72.178   crawl-66-249-72-178.googlebot.com\r\n66.249.66.151   crawl-66-249-66-151.googlebot.com\r\n66.249.71.38    crawl-66-249-71-38.googlebot.com\r\n66.249.71.76    crawl-66-249-71-76.googlebot.com\r\n66.249.72.248   crawl-66-249-72-248.googlebot.com\r\n66.249.66.193	crawl-66-249-66-193.googlebot.com\r\n66.249.66.51	crawl-66-249-66-51.googlebot.com\r\n66.249.72.233   crawl-66-249-72-233.googlebot.com\r\n66.249.66.233   crawl-66-249-66-233.googlebot.com\r\n66.249.71.68    crawl-66-249-71-68.googlebot.com\r\n66.249.72.164   crawl-66-249-72-164.googlebot.com\r\n66.249.72.208   crawl-66-249-72-208.googlebot.com\r\n66.249.72.205   crawl-66-249-72-205.googlebot.com\r\n66.249.72.152   crawl-66-249-72-152.googlebot.com\r\n66.249.71.105   crawl-66-249-71-105.googlebot.com\r\n66.249.72.131   crawl-66-249-72-131.googlebot.com\r\n66.249.72.167   crawl-66-249-72-167.googlebot.com\r\n66.249.71.106   crawl-66-249-71-106.googlebot.com\r\n66.249.66.161   crawl-66-249-66-161.googlebot.com\r\n66.249.66.203   crawl-66-249-66-203.googlebot.com\r\n66.249.71.123   crawl-66-249-71-123.googlebot.com\r\n66.249.72.129   crawl-66-249-72-129.googlebot.com\r\n66.249.72.230   crawl-66-249-72-230.googlebot.com\r\n66.249.66.179   crawl-66-249-66-179.googlebot.com\r\n66.249.66.11    crawl-66-249-66-11.googlebot.com\r\n66.249.72.228   crawl-66-249-72-228.googlebot.com\r\n66.249.66.41    crawl-66-249-66-41.googlebot.com\r\n66.249.66.129   crawl-66-249-66-129.googlebot.com\r\n66.249.66.97    crawl-66-249-66-97.googlebot.com\r\n66.249.72.231   crawl-66-249-72-231.googlebot.com\r\n66.249.72.166   crawl-66-249-72-166.googlebot.com\r\n66.249.72.217   crawl-66-249-72-217.googlebot.com\r\n66.249.72.137   crawl-66-249-72-137.googlebot.com\r\n66.249.76.227   crawl-66-249-76-227.googlebot.com\r\n66.249.76.24    crawl-66-249-76-24.googlebot.com\r\n66.249.71.118   crawl-66-249-71-118.googlebot.com\r\n66.249.66.105   crawl-66-249-66-105.googlebot.com\r\n66.249.66.87    crawl-66-249-66-87.googlebot.com\r\n66.249.66.225   crawl-66-249-66-225.googlebot.com\r\n66.249.71.4     crawl-66-249-71-4.googlebot.com\r\n66.249.73.73   crawl-66-249-73-73.googlebot.com\r\n66.249.73.55   crawl-66-249-73-55.googlebot.com\r\n66.249.74.21   crawl-66-249-74-21.googlebot.com\r\n66.249.75.24   crawl-66-249-75-24.googlebot.com\r\n66.249.75.227  crawl-66-249-75-227.googlebot.com\r\n66.249.76.25   crawl-66-249-76-25.googlebot.com\r\n66.249.78.40   crawl-66-249-78-40.googlebot.com\r\n\r\nYAHOO\r\n67.195.113.227 	b3091030.crawl.yahoo.net\r\n67.195.111.174 	b3091334.crawl.yahoo.net\r\n72.30.161.248 	llf531012.crawl.yahoo.net\r\n67.195.111.46 	b3091201.crawl.yahoo.net\r\n\r\nMSN\r\n207.46.12.240 	msnbot-207-46-12-240.search.msn.com\r\n207.46.204.164 	msnbot-207-46-204-164.search.msn.com\r\n207.46.13.96 	msnbot-207-46-13-96.search.msn.com\r\n207.46.199.50 	msnbot-207-46-199-50.search.msn.com\r\n207.46.204.180 	msnbot-207-46-204-180.search.msn.com\r\n207.46.199.49 	msnbot-207-46-199-49.search.msn.com\r\n207.46.195.242  msnbot-207-46-195-242.search.msn.com\r\n65.52.104.21    msnbot-65-52-104-21.search.msn.com\r\n65.52.109.19	msnbot-65-52-109-19.search.msn.com\r\n157.55.16.230   msnbot-157-55-16-230.search.msn.com\r\n157.55.17.195   msnbot-157-55-17-195.search.msn.com\r\n207.46.204.192  msnbot-207-46-204-192.search.msn.com\r\n207.46.199.53   msnbot-207-46-199-53.search.msn.com\r\n207.46.204.188  msnbot-207-46-204-188.search.msn.com\r\n157.55.17.144   msnbot-157-55-17-144.search.msn.com\r\n207.46.199.22   msnbot-207-46-199-22.search.msn.com\r\n65.52.110.201   msnbot-65-52-110-201.search.msn.com\r\n207.46.199.45   msnbot-207-46-199-45.search.msn.com\r\n65.52.104.27    msnbot-65-52-104-27.search.msn.com\r\n207.46.13.100   msnbot-207-46-13-100.search.msn.com\r\n207.46.204.166  msnbot-207-46-204-166.search.msn.com\r\n65.52.110.23    msnbot-65-52-110-23.search.msn.com\r\n65.52.109.150   msnbot-65-52-109-150.search.msn.com\r\n65.52.110.198   msnbot-65-52-110-198.search.msn.com\r\n65.52.110.152   msnbot-65-52-110-152.search.msn.com\r\n157.55.16.57    msnbot-157-55-16-57.search.msn.com\r\n65.52.111.9     msnbot-65-52-111-9.search.msn.com\r\n65.52.109.151   msnbot-65-52-109-151.search.msn.com\r\n207.46.13.15    msnbot-207-46-13-15.search.msn.com\r\n207.46.13.157   msnbot-207-46-13-157.search.msn.com\r\n157.55.18.26    msnbot-157-55-18-26.search.msn.com\r\n65.52.109.73    msnbot-65-52-109-73.search.msn.com\r\n157.55.16.86    msnbot-157-55-16-86.search.msn.com\r\n65.52.110.17    msnbot-65-52-110-17.search.msn.com\r\n157.55.16.219   msnbot-157-55-16-219.search.msn.com\r\n157.55.17.201   msnbot-157-55-17-201.search.msn.com\r\n207.46.199.39   msnbot-207-46-199-39.search.msn.com\r\n207.46.199.55   msnbot-207-46-199-55.search.msn.com\r\n65.52.108.69    msnbot-65-52-108-69.search.msn.com\r\n65.52.104.87    msnbot-65-52-104-87.search.msn.com\r\n65.52.108.26    msnbot-65-52-108-26.search.msn.com\r\n157.55.16.87    msnbot-157-55-16-87.search.msn.com\r\n207.46.204.224  msnbot-207-46-204-224.search.msn.com\r\n65.52.108.66    msnbot-65-52-108-66.search.msn.com\r\n157.55.17.148   msnbot-157-55-17-148.search.msn.com\r\n65.52.110.153   msnbot-65-52-110-153.search.msn.com\r\n65.52.108.66    msnbot-65-52-108-66.search.msn.com\r\n157.55.16.56    msnbot-157-55-16-56.search.msn.com\r\n157.55.17.146   msnbot-157-55-17-146.search.msn.com\r\n65.52.108.147   msnbot-65-52-108-147.search.msn.com\r\n207.46.199.54   msnbot-207-46-199-54.search.msn.com\r\n157.55.17.199   msnbot-157-55-17-199.search.msn.com\r\n65.52.109.26   msnbot-65-52-109-26.search.msn.com\r\n65.52.104.90   msnbot-65-52-104-90.search.msn.com\r\n65.52.110.16   msnbot-65-52-110-16.search.msn.com\r\n207.46.13.97   msnbot-207-46-13-97.search.msn.com\r\n207.46.13.170  msnbot-207-46-13-170.search.msn.com\r\n207.46.192.48  msnbot-207-46-192-48.search.msn.com\r\n207.46.199.47  msnbot-207-46-199-47.search.msn.com\r\n157.55.112.233 msnbot-157-55-112-233.search.msn.com\r\n207.46.13.117   msnbot-207-46-13-117.search.msn.com\r\n207.46.13.101   msnbot-207-46-13-101.search.msn.com\r\n207.46.204.181  msnbot-207-46-204-181.search.msn.com\r\n207.46.204.243  msnbot-207-46-204-243.search.msn.com\r\n65.52.104.28    msnbot-65-52-104-28.search.msn.com\r\n65.52.111.7    msnbot-65-52-111-7.search.msn.com\r\n65.52.110.145  msnbot-65-52-110-145.search.msn.com\r\n207.46.13.203  msnbot-207-46-13-203.search.msn.com\r\n65.52.109.149  msnbot-65-52-109-149.search.msn.com\r\n207.46.192.50  msnbot-207-46-192-50.search.msn.com\r\n207.46.13.147  msnbot-207-46-13-147.search.msn.com\r\n65.52.104.29  msnbot-65-52-104-29.search.msn.com\r\n65.52.104.11  msnbot-65-52-104-11.search.msn.com\r\n65.52.108.67  msnbot-65-52-108-67.search.msn.com\r\n157.55.16.231 msnbot-157-55-16-231.search.msn.com\r\n207.46.192.45 msnbot-207-46-192-45.search.msn.com\r\n65.52.110.22 msnbot-65-52-110-22.search.msn.com\r\n207.46.13.206 msnbot-207-46-13-206.search.msn.com\r\n157.55.17.200 msnbot-157-55-17-200.search.msn.com\r\n157.55.16.55 msnbot-157-55-16-55.search.msn.com\r\n65.52.108.58 msnbot-65-52-108-58.search.msn.com\r\n157.55.17.149  msnbot-157-55-17-149.search.msn.com\r\n65.52.110.190 msnbot-65-52-110-190.search.msn.com\r\n65.52.110.199 msnbot-65-52-110-199.search.msn.com\r\n65.52.111.245 msnbot-65-52-111-245.search.msn.com\r\n65.52.109.153 msnbot-65-52-109-153.search.msn.com\r\n65.52.109.152 msnbot-65-52-109-152.search.msn.com\r\n65.52.109.146 msnbot-65-52-109-146.search.msn.com\r\n65.52.104.19  msnbot-65-52-104-19.search.msn.com\r\n207.46.13.49  msnbot-207-46-13-49.search.msn.com\r\n207.46.13.93  msnbot-207-46-13-93.search.msn.com\r\n207.46.13.145 msnbot-207-46-13-145.search.msn.com\r\n207.46.13.146 msnbot-207-46-13-146.search.msn.com\r\n157.55.16.11  msnbot-157-55-16-11.search.msn.com\r\n157.55.17.147 msnbot-157-55-17-147.search.msn.com\r\n207.46.13.99  msnbot-207-46-13-99.search.msn.com\r\n65.52.108.24    msnbot-65-52-108-24.search.msn.com\r\n65.52.109.9     msnbot-65-52-109-9.search.msn.com\r\n65.52.109.194   msnbot-65-52-109-194.search.msn.com\r\n207.46.204.191  msnbot-207-46-204-191.search.msn.com\r\n157.55.17.103   msnbot-157-55-17-103.search.msn.com\r\n207.46.13.118   msnbot-207-46-13-118.search.msn.com\r\n207.46.199.37   msnbot-207-46-199-37.search.msn.com\r\n65.52.104.10    msnbot-65-52-104-10.search.msn.com\r\n65.52.108.142   msnbot-65-52-108-142.search.msn.com\r\n65.52.108.146   msnbot-65-52-108-146.search.msn.com\r\n65.52.108.199   msnbot-65-52-108-199.search.msn.com\r\n157.55.18.24    msnbot-157-55-18-24.search.msn.com\r\n157.56.92.141   msnbot-157-56-92-141.search.msn.com\r\n157.56.93.227   msnbot-157-56-93-227.search.msn.com\r\n207.46.13.169   msnbot-207-46-13-169.search.msn.com\r\n207.46.204.175  msnbot-207-46-204-175.search.msn.com\r\n207.46.204.177  msnbot-207-46-204-177.search.msn.com\r\n207.46.204.234  msnbot-207-46-204-234.search.msn.com\r\n65.52.104.20   msnbot-65-52-104-20.search.msn.com\r\n65.52.110.13   msnbot-65-52-110-13.search.msn.com\r\n157.55.16.220  msnbot-157-55-16-220.search.msn.com\r\n157.55.16.222  msnbot-157-55-16-222.search.msn.com\r\n157.55.17.192  msnbot-157-55-17-192.search.msn.com\r\n207.46.13.148  msnbot-207-46-13-148.search.msn.com\r\n65.52.109.199   msnbot-65-52-109-199.search.msn.com\r\n65.55.52.119    msnbot-65-55-52-119.search.msn.com\r\n65.55.52.117    msnbot-65-55-52-117.search.msn.com\r\n65.55.52.116    msnbot-65-55-52-116.search.msn.com\r\n65.55.52.115    msnbot-65-55-52-115.search.msn.com\r\n65.55.52.113    msnbot-65-55-52-113.search.msn.com\r\n65.55.52.111    msnbot-65-55-52-111.search.msn.com\r\n65.55.52.97     msnbot-65-55-52-97.search.msn.com\r\n65.55.52.96     msnbot-65-55-52-96.search.msn.com\r\n157.55.16.99    msnbot-157-55-16-99.search.msn.com\r\n157.55.33.40    msnbot-157-55-33-40.search.msn.com \r\n157.55.35.94    msnbot-157-55-35-94.search.msn.com\r\n131.253.47.248  msnbot-131-253-47-248.search.msn.com\r\n131.253.46.112  msnbot-131-253-46-112.search.msn.com\r\n131.253.46.216  msnbot-131-253-46-216.search.msn.com\r\n157.55.32.106   msnbot-157-55-32-106.search.msn.com\r\n157.55.33.253   msnbot-157-55-33-253.search.msn.com\r\n157.55.32.186   msnbot-157-55-32-186.search.msn.com\r\n157.55.32.83    msnbot-157-55-32-83.search.msn.com\r\n157.55.32.58    msnbot-157-55-32-58.search.msn.com\r\n157.55.32.96    msnbot-157-55-32-96.search.msn.com\r\n157.55.35.53    msnbot-157-55-35-53.search.msn.com\r\n157.55.35.81    msnbot-157-55-35-81.search.msn.com\r\n157.55.35.46    msnbot-157-55-35-46.search.msn.com\r\n157.55.34.183   msnbot-157-55-34-183.search.msn.com\r\n157.56.229.189  msnbot-157-56-229-189.search.msn.com\r\n131.253.47.173  msnbot-131-253-47-173.search.msn.com\r\n131.253.47.230  msnbot-131-253-47-230.search.msn.com\r\n131.253.47.253  msnbot-131-253-47-253.search.msn.com\r\n131.253.47.188  msnbot-131-253-47-188.search.msn.com\r\n131.253.47.158  msnbot-131-253-47-158.search.msn.com\r\n131.253.47.219  msnbot-131-253-47-219.search.msn.com\r\n157.56.93.150   msnbot-157-56-93-150.search.msn.com\r\n157.55.32.109   msnbot-157-55-32-109.search.msn.com\r\n157.55.36.39    msnbot-157-55-36-39.search.msn.com\r\n157.55.32.111   msnbot-157-55-32-111.search.msn.com\r\n157.55.35.37    msnbot-157-55-35-37.search.msn.com\r\n157.55.34.32    msnbot-157-55-34-32.search.msn.com\r\n157.55.33.20    msnbot-157-55-33-20.search.msn.com\r\n157.55.33.24    msnbot-157-55-33-24.search.msn.com\r\n157.55.33.80    msnbot-157-55-33-80.search.msn.com\r\n157.55.32.149   msnbot-157-55-32-149.search.msn.com\r\n157.55.34.180   msnbot-157-55-34-180.search.msn.com\r\n157.55.33.123   msnbot-157-55-33-123.search.msn.com\r\n157.55.35.38    msnbot-157-55-35-38.search.msn.com\r\n157.55.32.80    msnbot-157-55-32-80.search.msn.com\r\n157.55.35.48    msnbot-157-55-35-48.search.msn.com\r\n157.55.32.98    msnbot-157-55-32-98.search.msn.com\r\n131.253.46.114  msnbot-131-253-46-114.search.msn.com\r\n131.253.46.241   msnbot-131-253-46-241.search.msn.com\r\n131.253.47.155   msnbot-131-253-47-155.search.msn.com\r\n131.253.47.180   msnbot-131-253-47-180.search.msn.com\r\n157.56.229.88    msnbot-157-56-229-88.search.msn.com\r\n157.55.33.14     msnbot-157-55-33-14.search.msn.com\r\n65.55.24.236     msnbot-65-55-24-236.search.msn.com\r\n157.55.35.100   msnbot-157-55-35-100.search.msn.com\r\n131.253.46.246  msnbot-131-253-46-246.search.msn.com\r\n131.253.46.251  msnbot-131-253-46-251.search.msn.com\r\n131.253.47.195  msnbot-131-253-47-195.search.msn.com\r\n157.55.33.22    msnbot-157-55-33-22.search.msn.com\r\n157.55.36.52    msnbot-157-55-36-52.search.msn.com\r\n157.55.35.91    msnbot-157-55-35-91.search.msn.com\r\n157.55.33.79    msnbot-157-55-33-79.search.msn.com\r\n157.56.93.204   msnbot-157-56-93-204.search.msn.com\r\n157.56.93.191   msnbot-157-56-93-191.search.msn.com\r\n131.253.47.195  msnbot-131-253-47-195.search.msn.com\r\n65.52.111.142   msnbot-65-52-111-142.search.msn.com\r\n65.55.24.237    msnbot-65-55-24-237.search.msn.com\r\n157.55.33.19    msnbot-157-55-33-19.search.msn.com\r\n157.55.33.182   msnbot-157-55-33-182.search.msn.com\r\n131.253.46.124   msnbot-131-253-46-124.search.msn.com\r\n131.253.46.231   msnbot-131-253-46-231.search.msn.com\r\n131.253.46.105   msnbot-131-253-46-105.search.msn.com\r\n157.55.34.179    msnbot-157-55-34-179.search.msn.com\r\n157.55.34.166    msnbot-157-55-34-166.search.msn.com\r\n157.56.229.141   msnbot-157-56-229-141.search.msn.com\r\n157.55.32.75   msnbot-157-55-32-75.search.msn.com\r\n157.55.32.86   msnbot-157-55-32-86.search.msn.com\r\n157.55.32.60   msnbot-157-55-32-60.search.msn.com\r\n157.55.36.36   msnbot-157-55-36-36.search.msn.com\r\n157.55.36.49   msnbot-157-55-36-49.search.msn.com\r\n157.56.93.201  msnbot-157-56-93-201.search.msn.com\r\n157.55.36.49   msnbot-157-55-36-49.search.msn.com\r\n157.55.35.36   msnbot-157-55-35-36.search.msn.com\r\n157.55.35.105  msnbot-157-55-35-105.search.msn.com\r\n131.253.47.150 msnbot-131-253-47-150.search.msn.com\r\n131.253.47.177 msnbot-131-253-47-177.search.msn.com\r\n157.55.33.248  msnbot-157-55-33-248.search.msn.com\r\n157.55.32.77   msnbot-157-55-32-77.search.msn.com\r\n157.55.32.77   msnbot-157-55-32-77.search.msn.com\r\n131.253.46.212  msnbot-131-253-46-212.search.msn.com\r\n157.55.34.25    msnbot-157-55-34-25.search.msn.com\r\n157.55.35.112   msnbot-157-55-35-112.search.msn.com\r\n157.55.32.164   msnbot-157-55-32-164.search.msn.com\r\n65.55.24.239    msnbot-65-55-24-239.search.msn.com\r\n131.253.47.235   msnbot-131-253-47-235.search.msn.com\r\n131.253.47.145   msnbot-131-253-47-145.search.msn.com\r\n157.56.93.194    msnbot-157-56-93-194.search.msn.com\r\n157.55.32.108    msnbot-157-55-32-108.search.msn.com\r\n131.253.47.164   msnbot-131-253-47-164.search.msn.com\r\n157.55.32.188    msnbot-157-55-32-188.search.msn.com\r\n157.55.32.184   msnbot-157-55-32-184.search.msn.com\r\n157.55.33.109   msnbot-157-55-33-109.search.msn.com\r\n65.55.208.117   msnbot-65-55-208-117.search.msn.com\r\n65.55.208.6     msnbot-65-55-208-6.search.msn.com\r\n65.55.24.244    msnbot-65-55-24-244.search.msn.com\r\n157.56.92.145   msnbot-157-56-92-145.search.msn.com\r\n157.55.35.79    msnbot-157-55-35-79.search.msn.com\r\n157.55.32.152   msnbot-157-55-32-152.search.msn.com\r\n157.55.34.35    msnbot-157-55-34-35.search.msn.com\r\n157.55.33.44    msnbot-157-55-33-44.search.msn.com\r\n157.55.33.49    msnbot-157-55-33-49.search.msn.com\r\n65.52.111.41    msnbot-65-52-111-41.search.msn.com\r\n157.55.32.93    msnbot-157-55-32-93.search.msn.com\r\n157.55.35.88    msnbot-157-55-35-88.search.msn.com\r\n157.55.33.125   msnbot-157-55-33-125.search.msn.com\r\n65.55.208.25    msnbot-65-55-208-25.search.msn.com\r\n157.55.33.251   msnbot-157-55-33-251.search.msn.com\r\n157.55.33.181   msnbot-157-55-33-181.search.msn.com\r\n207.46.199.23   msnbot-207-46-199-23.search.msn.com\r\n157.55.32.116   msnbot-157-55-32-116.search.msn.com\r\n157.55.36.37    msnbot-157-55-36-37.search.msn.com\r\n65.55.24.221    msnbot-65-55-24-221.search.msn.com\r\n157.55.33.47    msnbot-157-55-33-47.search.msn.com\r\n157.55.32.56   msnbot-157-55-32-56.search.msn.com\r\n157.55.32.82   msnbot-157-55-32-82.search.msn.com\r\n157.55.32.144  msnbot-157-55-32-144.search.msn.com\r\n157.55.33.50   msnbot-157-55-33-50.search.msn.com\r\n65.55.24.216   msnbot-65-55-24-216.search.msn.com\r\n65.55.208.77   msnbot-65-55-208-77.search.msn.com\r\n65.55.213.67   msnbot-65-55-213-67.search.msn.com\r\n65.55.213.68   msnbot-65-55-213-68.search.msn.com\r\n65.55.213.77   msnbot-65-55-213-77.search.msn.com\r\n157.55.33.31   msnbot-157-55-33-31.search.msn.com\r\n157.55.33.98   msnbot-157-55-33-98.search.msn.com\r\n157.55.32.117  msnbot-157-55-32-117.search.msn.com\r\n157.55.34.168  msnbot-157-55-34-168.search.msn.com\r\n157.55.35.98   msnbot-157-55-35-98.search.msn.com\r\n157.56.93.207  msnbot-157-56-93-207.search.msn.com\r\n157.56.93.208  msnbot-157-56-93-208.search.msn.com\r\n157.55.33.113  msnbot-157-55-33-113.search.msn.com\r\n157.55.35.113  msnbot-157-55-35-113.search.msn.com\r\n157.55.33.250  msnbot-157-55-33-250.search.msn.com\r\n157.55.35.75   msnbot-157-55-35-75.search.msn.com\r\n157.55.33.114  msnbot-157-55-33-114.search.msn.com\r\n157.56.92.176  msnbot-157-56-92-176.search.msn.com\r\n157.56.93.39   msnbot-157-56-93-39.search.msn.com\r\n157.55.32.61   msnbot-157-55-32-61.search.msn.com\r\n157.55.34.94   msnbot-157-55-34-94.search.msn.com\r\n157.55.35.33   msnbot-157-55-35-33.search.msn.com\r\n157.55.32.222  msnbot-157-55-32-222.search.msn.com\r\n157.55.34.24   msnbot-157-55-34-24.search.msn.com\r\n157.56.93.94   msnbot-157-56-93-94.search.msn.com\r\n157.55.32.39   msnbot-157-55-32-39.search.msn.com\r\n65.55.52.88    msnbot-65-55-52-88.search.msn.com\r\n\r\nBAIDU (Chinese spider)\r\n123.125.71.96 	baiduspider-123-125-71-96.crawl.baidu.com\r\n123.125.71.117 	baiduspider-123-125-71-117.crawl.baidu.com\r\n123.125.71.106 	baiduspider-123-125-71-106.crawl.baidu.com\r\n123.125.71.98 	baiduspider-123-125-71-98.crawl.baidu.com\r\n123.125.71.94 	baiduspider-123-125-71-94.crawl.baidu.com\r\n123.125.71.101 	baiduspider-123-125-71-101.crawl.baidu.com\r\n123.125.71.105 	baiduspider-123-125-71-105.crawl.baidu.com\r\n\r\nYANDEX\r\n95.108.240.250 	spider30.yandex.ru\r\n95.108.158.236 	imparser06.yandex.ru\r\n178.154.243.101 spider-178-154-243-101.yandex.com\r\n\r\nCHOOPA\r\n173.199.120.43   173.199.120.43.choopa.net\r\n173.199.119.11   173.199.119.11.choopa.net\r\n173.199.115.51   173.199.115.51.choopa.net\r\n173.199.116.91   173.199.116.91.choopa.net\r\n173.199.115.179  173.199.115.179.choopa.net\r\n173.199.115.35   173.199.115.35.choopa.net\r\n173.199.115.147  173.199.115.147.choopa.net\r\n173.199.114.235  173.199.114.235.choopa.net\r\n173.199.117.235  173.199.117.235.choopa.net\r\n173.199.120.131  173.199.120.131.choopa.net\r\n173.199.115.107  173.199.115.107.choopa.net\r\n173.199.119.155  173.199.119.155.choopa.net\r\n173.199.116.219  173.199.116.219.choopa.net\r\n173.199.117.251  173.199.117.251.choopa.net\r\n173.199.115.123  173.199.115.123.choopa.net\r\n173.199.115.171  173.199.115.171.choopa.net\r\n173.199.114.91   173.199.114.91.choopa.net\r\n173.199.114.51   173.199.114.51.choopa.net\r\n173.199.114.139  173.199.114.139.choopa.net\r\n173.199.116.51   173.199.116.51.choopa.net\r\n173.199.119.67   173.199.119.67.choopa.net\r\n173.199.115.11   173.199.115.11.choopa.net\r\n173.199.115.155  173.199.115.155.choopa.net\r\n173.199.120.59   173.199.120.59.choopa.net\r\n173.199.120.91   173.199.120.91.choopa.net\r\n173.199.120.123  173.199.120.123.choopa.net\r\n173.199.114.195  173.199.114.195.choopa.net\r\n173.199.116.235  173.199.116.235.choopa.net\r\n173.199.119.19   173.199.119.19.choopa.net\r\n173.199.115.59   173.199.115.59.choopa.net\r\n173.199.116.179  173.199.116.179.choopa.net\r\n173.199.114.211  173.199.114.211.choopa.net\r\n173.199.115.99   173.199.115.99.choopa.net\r\n173.199.119.147  173.199.119.147.choopa.net\r\n173.199.115.139  173.199.115.139.choopa.net\r\n173.199.114.187  173.199.114.187.choopa.net\r\n173.199.120.51   173.199.120.51.choopa.net\r\n\r\nOTHER\r\n174.129.237.157 ec2-174-129-237-157.compute-1.amazonaws.com\r\n174.129.169.190 ec2-174-129-169-190.compute-1.amazonaws.com\r\n23.22.134.71    ec2-23-22-134-71.compute-1.amazonaws.com\r\n23.20.26.170    ec2-23-20-26-170.compute-1.amazonaws.com\r\n213.186.120.196 213.186.120.196.utel.net.ua\r\n\r\n5.10.83.65   5.10.83.65-static.reverse.softlayer.com\r\n5.10.83.21   5.10.83.21-static.reverse.softlayer.com\r\n5.10.83.41   5.10.83.41-static.reverse.softlayer.com\r\n5.10.83.35   5.10.83.35-static.reverse.softlayer.com\r\n5.10.83.82   5.10.83.82-static.reverse.softlayer.com\r\n5.10.83.15   5.10.83.15-static.reverse.softlayer.com\r\n5.10.83.31   5.10.83.31-static.reverse.softlayer.com\r\n5.10.83.36   5.10.83.36-static.reverse.softlayer.com\r\n5.10.83.19   5.10.83.19-static.reverse.softlayer.com\r\n5.10.83.11   5.10.83.11-static.reverse.softlayer.com\r\n5.10.83.46   5.10.83.46-static.reverse.softlayer.com\r\n5.10.83.23   5.10.83.23-static.reverse.softlayer.com\r\n5.10.83.101  5.10.83.101-static.reverse.softlayer.com\r\n5.10.83.18   ahrefsbot-5-10-83-18.ahrefs.com\r\n'),
(183, 'remove.empty.tags', '0'),
(184, 'create.pdf.thumbs', '0'),
(185, 'create.pdf.thumbs.by.scan', '0'),
(186, 'pdf.thumb.height', '200'),
(187, 'pdf.thumb.width', '200'),
(188, 'pdf.thumb.pic.height', '400'),
(189, 'pdf.thumb.pic.width', '400'),
(190, 'pdf.thumb.image.type', 'GIF'),
(191, 'create.auto.thumbs.from.pics', '0'),
(192, 'create.auto.thumbs.from.pics.image.height', '400'),
(193, 'create.auto.thumbs.from.pics.image.width', '400'),
(194, 'create.auto.thumbs.from.pics.by.scan', '0'),
(195, 'fe.upload.amount.of.pictures', '10'),
(196, 'be.upload.amount.of.pictures', '10'),
(197, 'imagemagick.path', ''),
(198, 'uncategorised.files.folder.name', '_uncategorised_files'),
(199, 'tempzipfiles.folder.name', '_tempzipfiles'),
(200, 'categories.batch.in.progress', '0'),
(201, 'downloads.batch.in.progress', '0'),
(202, 'use.unicode.path.names', '0'),
(203, 'report.mail.subject', 'A user has reported this file.'),
(204, 'report.mail.layout', 'The following Download has been Reported by a user:<br /><br />Category<br />ID: {cat_id}<br />{category}<br /><br />Download<br />ID: {file_id}<br />Title: {file_title}<br />Filename: {file_name}<br /><br />Reason:<br />{reason}<br />Message:<br />{message}<br /><br />Date and time: {date_time}<br />Reported by<br />Name: {name}<br />E-Mail: {mail}<br />User IP: {ip}<br /><br />Please do not respond directly to this email as it is automatically generated and you will not receive a reply.'),
(205, 'report.form.layout', ''),
(206, 'report.form.layout.css', ''),
(207, 'robots', ''),
(208, 'use.real.user.name.in.frontend', '1'),
(209, 'global.datetime.short', 'Y-m-d'),
(210, 'use.css.buttons.instead.icons', '1'),
(211, 'view.empty.categories', '1'),
(212, 'view.empty.sub.categories', '1'),
(213, 'cat.pic.size.height', '48'),
(214, 'file.pic.size.height', '32'),
(215, 'autopublish.default.description', ''),
(216, 'view.no.file.message.in.empty.category', '0'),
(217, 'plupload.runtime', 'full'),
(218, 'plupload.max.file.size', '10'),
(219, 'plupload.chunk.size', '0'),
(220, 'plupload.chunk.unit', 'mb'),
(221, 'plupload.rename', '0'),
(222, 'plupload.image.file.extensions', 'gif,png,jpg,jpeg,GIF,PNG,JPG,JPEG'),
(223, 'plupload.other.file.extensions', 'zip,rar,pdf,doc,txt,ZIP,RAR,PDF,DOC,TXT'),
(224, 'plupload.unique.names', '0'),
(225, 'plupload.enable.image.resizing', '0'),
(226, 'plupload.resize.width', '640'),
(227, 'plupload.resize.height', '480'),
(228, 'plupload.resize.quality', '90'),
(229, 'plupload.enable.uploader.log', '0'),
(230, 'private.area.folder.name', '_private_user_area'),
(231, 'delete.also.images.from.downloads', '0'),
(232, 'preview.files.folder.name', '_preview_files'),
(233, 'delete.also.preview.files.from.downloads', '0'),
(234, 'css.button.color.hot', 'jred'),
(235, 'css.button.color.new', 'jorange'),
(236, 'css.button.color.updated', 'jblue'),
(237, 'css.button.color.download', 'jorange'),
(238, 'css.button.color.mirror1', 'jgray'),
(239, 'css.button.color.mirror2', 'jgray'),
(240, 'css.button.size.download', ''),
(241, 'css.button.size.download.mirror', 'jmedium'),
(242, 'css.button.color.download.mirror', 'jorange'),
(243, 'css.button.size.download.small', 'jsmall'),
(244, 'flowplayer.use', '0'),
(245, 'flowplayer.playerwidth', '300'),
(246, 'flowplayer.playerheight', '200'),
(247, 'flowplayer.playerheight.audio', '30'),
(248, 'flowplayer.control.settings', ''),
(249, 'flowplayer.view.video.only.in.details', '0'),
(250, 'use.pagination.subcategories', '0'),
(251, 'amount.subcats.per.page.in.pagination', '5'),
(252, 'shortened.filename.length', '15'),
(253, 'old.jd.release.found', '0'),
(254, 'show.header.catlist.uncategorised', '1'),
(255, 'show.header.catlist.all', '1'),
(256, 'show.header.catlist.topfiles', '0'),
(257, 'show.header.catlist.newfiles', '0'),
(258, 'show.header.catlist.levels', '0'),
(259, 'html5player.use', '1'),
(260, 'html5player.width', '320'),
(261, 'html5player.height', '240'),
(262, 'html5player.audio.width', '250'),
(263, 'html5player.view.video.only.in.details', '0'),
(264, 'featured.pic.size', '48'),
(265, 'featured.pic.size.height', '48'),
(266, 'featured.pic.filename', 'featured_orange_star.png');

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_jdownloads_files`
--

CREATE TABLE IF NOT EXISTS `c39g0_jdownloads_files` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_title` varchar(255) NOT NULL,
  `file_alias` varchar(255) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `description_long` longtext NOT NULL,
  `file_pic` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL COMMENT 'Marked as deprecated',
  `thumbnail2` varchar(255) NOT NULL COMMENT 'Marked as deprecated',
  `thumbnail3` varchar(255) NOT NULL COMMENT 'Marked as deprecated',
  `images` text NOT NULL COMMENT 'Here are now stored all selected thumbnail images from this download (prior thumbnail to thumbnail3)',
  `price` varchar(20) NOT NULL DEFAULT '',
  `release` varchar(255) NOT NULL DEFAULT '',
  `file_language` int(3) NOT NULL DEFAULT '0',
  `system` int(3) NOT NULL DEFAULT '0',
  `license` varchar(255) NOT NULL DEFAULT '',
  `url_license` varchar(255) NOT NULL DEFAULT '',
  `license_agree` tinyint(1) NOT NULL DEFAULT '0',
  `size` varchar(255) NOT NULL DEFAULT '',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `file_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_from` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_to` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `use_timeframe` tinyint(1) NOT NULL DEFAULT '0',
  `url_download` varchar(255) NOT NULL COMMENT 'contains only the assigned filename',
  `preview_filename` varchar(255) NOT NULL,
  `other_file_id` int(11) NOT NULL,
  `md5_value` varchar(100) NOT NULL,
  `sha1_value` varchar(100) NOT NULL,
  `extern_file` varchar(255) NOT NULL DEFAULT '',
  `extern_site` tinyint(1) NOT NULL DEFAULT '0',
  `mirror_1` varchar(255) NOT NULL DEFAULT '',
  `mirror_2` varchar(255) NOT NULL DEFAULT '',
  `extern_site_mirror_1` tinyint(1) NOT NULL DEFAULT '0',
  `extern_site_mirror_2` tinyint(1) NOT NULL DEFAULT '0',
  `url_home` varchar(255) NOT NULL DEFAULT '',
  `author` varchar(255) NOT NULL DEFAULT '',
  `url_author` varchar(255) NOT NULL DEFAULT '',
  `created_by` varchar(255) NOT NULL DEFAULT '' COMMENT 'Marked as deprecated',
  `created_id` int(11) NOT NULL DEFAULT '0',
  `created_mail` varchar(255) NOT NULL DEFAULT '',
  `modified_by` varchar(255) NOT NULL DEFAULT '' COMMENT 'Marked as deprecated',
  `modified_id` int(11) NOT NULL DEFAULT '0',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `submitted_by` int(11) NOT NULL DEFAULT '0',
  `set_aup_points` tinyint(1) NOT NULL DEFAULT '0',
  `downloads` int(11) NOT NULL DEFAULT '0',
  `cat_id` int(11) NOT NULL DEFAULT '0',
  `notes` text NOT NULL,
  `changelog` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `password_md5` varchar(100) NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `robots` varchar(255) NOT NULL,
  `update_active` tinyint(1) NOT NULL DEFAULT '0',
  `custom_field_1` tinyint(2) NOT NULL DEFAULT '0',
  `custom_field_2` tinyint(2) NOT NULL DEFAULT '0',
  `custom_field_3` tinyint(2) NOT NULL DEFAULT '0',
  `custom_field_4` tinyint(2) NOT NULL DEFAULT '0',
  `custom_field_5` tinyint(2) NOT NULL DEFAULT '0',
  `custom_field_6` varchar(255) NOT NULL DEFAULT '',
  `custom_field_7` varchar(255) NOT NULL DEFAULT '',
  `custom_field_8` varchar(255) NOT NULL DEFAULT '',
  `custom_field_9` varchar(255) NOT NULL DEFAULT '',
  `custom_field_10` varchar(255) NOT NULL DEFAULT '',
  `custom_field_11` date NOT NULL DEFAULT '0000-00-00',
  `custom_field_12` date NOT NULL DEFAULT '0000-00-00',
  `custom_field_13` text NOT NULL,
  `custom_field_14` text NOT NULL,
  `access` int(10) unsigned DEFAULT NULL,
  `language` char(7) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table',
  PRIMARY KEY (`file_id`),
  KEY `idx_cat_id` (`cat_id`),
  KEY `idx_access` (`access`),
  KEY `idx_published` (`published`),
  KEY `idx_checked_out` (`checked_out`),
  KEY `idx_alias` (`file_alias`),
  KEY `idx_created_id` (`created_id`),
  KEY `idx_language` (`language`),
  KEY `idx_featured` (`featured`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `c39g0_jdownloads_files`
--

INSERT INTO `c39g0_jdownloads_files` (`file_id`, `file_title`, `file_alias`, `description`, `description_long`, `file_pic`, `thumbnail`, `thumbnail2`, `thumbnail3`, `images`, `price`, `release`, `file_language`, `system`, `license`, `url_license`, `license_agree`, `size`, `date_added`, `file_date`, `publish_from`, `publish_to`, `use_timeframe`, `url_download`, `preview_filename`, `other_file_id`, `md5_value`, `sha1_value`, `extern_file`, `extern_site`, `mirror_1`, `mirror_2`, `extern_site_mirror_1`, `extern_site_mirror_2`, `url_home`, `author`, `url_author`, `created_by`, `created_id`, `created_mail`, `modified_by`, `modified_id`, `modified_date`, `submitted_by`, `set_aup_points`, `downloads`, `cat_id`, `notes`, `changelog`, `password`, `password_md5`, `views`, `metakey`, `metadesc`, `robots`, `update_active`, `custom_field_1`, `custom_field_2`, `custom_field_3`, `custom_field_4`, `custom_field_5`, `custom_field_6`, `custom_field_7`, `custom_field_8`, `custom_field_9`, `custom_field_10`, `custom_field_11`, `custom_field_12`, `custom_field_13`, `custom_field_14`, `access`, `language`, `ordering`, `featured`, `published`, `checked_out`, `checked_out_time`, `asset_id`) VALUES
(1, 'Project Submission Format', 'project-submission-format', '', '', 'zip.png', '', '', '', '', '', '', 0, 0, '0', '', 0, '65.5 KB', '2015-12-28 06:04:27', '0000-00-00 00:00:00', '2015-12-28 06:04:27', '0000-00-00 00:00:00', 0, 'projectSubmissionFormat.doc', '', 0, '3afa6a103c1527ef164b7cb8b4ea7c94', 'baec7b9eb2e3d28caf212809d5a5fb1b38c12287', '', 0, '', '', 0, 0, '', '', '', '', 327, '', '', 0, '0000-00-00 00:00:00', 0, 0, 0, 1, '', '', '', '', 2, '', '', '', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', 1, '*', 1, 0, 1, 0, '0000-00-00 00:00:00', 82);

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_jdownloads_licenses`
--

CREATE TABLE IF NOT EXISTS `c39g0_jdownloads_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `url` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_checked_out` (`checked_out`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `c39g0_jdownloads_licenses`
--

INSERT INTO `c39g0_jdownloads_licenses` (`id`, `title`, `alias`, `description`, `url`, `language`, `checked_out`, `checked_out_time`, `published`, `ordering`) VALUES
(1, 'GNU/GPL', 'gnu-gpl', '', 'http://www.gnu.org/licenses/gpl.html', '*', 0, '0000-00-00 00:00:00', 1, 1),
(2, 'GNU/LGPL', 'gnu-lgpl', '', 'http://www.gnu.org/licenses/lgpl.html', '*', 0, '0000-00-00 00:00:00', 1, 1),
(3, 'Donationware', 'donationware', 'The donation is to aid further development and support.', '', '*', 0, '0000-00-00 00:00:00', 1, 1),
(4, 'Linkware', 'linkware', 'The Linkware licence requires that a link to the original document, image or software supplier is included.', '', '*', 0, '0000-00-00 00:00:00', 1, 1),
(5, 'Charityware', 'charityware', 'The Charityware licence is free to use, the author requests you to please make a donation to a good cause.', '', '*', 0, '0000-00-00 00:00:00', 1, 1),
(6, 'Commercial license', 'commercial-license', '', '', '*', 0, '0000-00-00 00:00:00', 1, 1),
(7, 'Creative Commons', 'creative-commons', '', 'http://en.wikipedia.org/wiki/Creative_Commons', '*', 0, '0000-00-00 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_jdownloads_logs`
--

CREATE TABLE IF NOT EXISTS `c39g0_jdownloads_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `log_file_id` int(11) NOT NULL,
  `log_file_size` varchar(20) NOT NULL DEFAULT '',
  `log_file_name` varchar(255) NOT NULL DEFAULT '',
  `log_title` varchar(255) NOT NULL DEFAULT '',
  `log_ip` varchar(25) NOT NULL DEFAULT '',
  `log_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_user` int(11) NOT NULL DEFAULT '0',
  `log_browser` varchar(255) NOT NULL DEFAULT '',
  `language` char(7) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_type` (`type`),
  KEY `idx_log_user` (`log_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_jdownloads_ratings`
--

CREATE TABLE IF NOT EXISTS `c39g0_jdownloads_ratings` (
  `file_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_jdownloads_templates`
--

CREATE TABLE IF NOT EXISTS `c39g0_jdownloads_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_name` varchar(64) NOT NULL,
  `template_typ` tinyint(2) NOT NULL DEFAULT '0',
  `template_header_text` longtext NOT NULL,
  `template_subheader_text` longtext NOT NULL,
  `template_footer_text` longtext NOT NULL,
  `template_before_text` text NOT NULL,
  `template_text` longtext NOT NULL,
  `template_after_text` text NOT NULL,
  `template_active` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `note` text NOT NULL,
  `cols` tinyint(1) NOT NULL DEFAULT '1',
  `checkbox_off` tinyint(1) NOT NULL DEFAULT '0',
  `use_to_view_subcats` tinyint(1) NOT NULL DEFAULT '0',
  `symbol_off` tinyint(1) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '*',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_checked_out` (`checked_out`),
  KEY `idx_template_typ` (`template_typ`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `c39g0_jdownloads_templates`
--

INSERT INTO `c39g0_jdownloads_templates` (`id`, `template_name`, `template_typ`, `template_header_text`, `template_subheader_text`, `template_footer_text`, `template_before_text`, `template_text`, `template_after_text`, `template_active`, `locked`, `note`, `cols`, `checkbox_off`, `use_to_view_subcats`, `symbol_off`, `language`, `checked_out`, `checked_out_time`) VALUES
(1, 'Standard Categories Layout v2.5', 1, '<table class="jd_top_navi" width="100%" style="border-bottom: 1px solid #cccccc;">\n<tr valign="top" border="0px">\n<td style="padding:5px;">{home_link}</td>\n<td style="padding:5px;">{search_link}</td>\n<td style="padding:5px;">{upload_link}</td>\n<td style="padding:5px;" align="right" valign="bottom">{category_listbox}</td>\n</tr>\n</table>', '<table class="jd_cat_subheader" width="100%">\n<tr>\n<td width="45%" valign="top">\n<b>{subheader_title}</b>\n</td>\n<td width="55%" valign="top" colspan="2">\n<div class="jd_page_nav" style="text-align:right">{page_navigation_pages_counter} {page_navigation}</div>\n</td>\n</tr>\n<tr>\n<td width="45%" valign="top" align="left">{count_of_sub_categories}</td>\n<td width="55%" valign="top" colspan="2"></td>\n</tr>\n</table>', '<table class="jd_footer" style="width:100%;">   \n    <tr>\n        <td style="width:100%; vertical-align:top">\n            <div class="jd_page_nav" style="text-align:right">{page_navigation}</div>\n        </td>\n    </tr>\n</table>\n<div style="text-align:left" class="back_button">{back_link}</div>', '', '{cat_title_begin}<div style="background-color:#EFEFEF; padding:6px;">{subcats_title_text}</div>{cat_title_end}\n{cat_info_begin}\n<table width="100%" style="border-bottom: 1px solid #cccccc;">\n  <tr valign="top" border="0px">\n    <td width="65%" style="padding:5px;">{cat_pic}<b>{cat_title}</b></td>\n    <td width="20%" style="padding:5px; text-align:right">{sum_subcats}</td>\n    <td width="15%" style="padding:5px; text-align:right">{sum_files_cat}</td>\n  </tr>\n  <tr valign="top" border="0px">\n    <td colspan="3" width="100%" style="padding:5px;">{cat_description}</td>\n  </tr>\n  <tr><td>{tags}</td></tr>\n</table>\n{cat_info_end}', '', 1, 1, '', 1, 0, 0, 0, '*', 0, '0000-00-00 00:00:00'),
(2, 'Standard Category Layout v2.5', 4, '<table class="jd_top_navi" width="100%" style="border-bottom: 1px solid #cccccc;">\n<tr valign="top" border="0px">\n<td style="padding:5px;">{home_link}</td>\n<td style="padding:5px;">{search_link}</td>\n<td style="padding:5px;">{upload_link}</td>\n<td style="padding:5px;">{upper_link}</td>\n<td style="padding:5px;" align="right" valign="bottom">{category_listbox}</td>\n</tr>\n</table>', '<table class="jd_cat_subheader" width="100%">\n<tr>\n<td width="45%" valign="top">\n<b>{subheader_title}</b>\n</td>\n<td width="55%" valign="top" colspan="2">\n<div class="jd_page_nav" style="text-align:right">{page_navigation_pages_counter} {page_navigation}</div>\n</td>\n</tr>\n<tr>\n<td width="45%" valign="top" align="left">{count_of_sub_categories}</td>\n<td width="55%" valign="top" colspan="2"></td>\n</tr>\n</table>', '<table class="jd_footer" style="width:100%;">   \n    <tr>\n        <td style="width:100%; vertical-align:top">\n            <div class="jd_page_nav" style="text-align:right">{page_navigation}</div>\n        </td>\n    </tr>\n</table>\n<div style="text-align:left" class="back_button">{back_link}</div>', '', '{cat_title_begin}<div style="background-color:#EFEFEF; padding:6px;">{subcats_title_text}</div>{cat_title_end}\n{cat_info_begin}\n<table width="100%" style="border-bottom: 1px solid #cccccc;">\n  <tr valign="top" border="0px">\n    <td width="65%" style="padding:5px;">{cat_pic}<b>{cat_title}</b></td>\n    <td width="20%" style="padding:5px; text-align:right">{sum_subcats}</td>\n    <td width="15%" style="padding:5px; text-align:right">{sum_files_cat}</td>\n  </tr>\n  <tr valign="top" border="0px">\n    <td colspan="3" width="100%" style="padding:5px;">{cat_description}</td>\n  </tr>\n{tags}\n</table>\n{cat_info_end}\n{sub_categories}\n<div style="clear:both">&#160;</div>\n<div style="float:right;">{checkbox_top}</div>\n{files}\n{form_hidden}\n<div style="text-align:right">{form_button}</div>', '', 1, 1, '', 1, 0, 0, 0, '*', 0, '0000-00-00 00:00:00'),
(3, 'Standard Files Layout v2.5', 2, '<table class="jd_top_navi" width="100%" style="border-bottom: 1px solid #cccccc;">\n<tr valign="top" border="0px">\n<td style="padding:5px;">{home_link}</td>\n<td style="padding:5px;">{search_link}</td>\n<td style="padding:5px;">{upload_link}</td>\n<td style="padding:5px;">{upper_link}</td>\n<td style="padding:5px;" align="right" valign="bottom">{category_listbox}</td>\n</tr>\n</table>', '<table class="jd_cat_subheader" width="100%">\n<tr>\n<td width="60%" valign="top">\n<b>{subheader_title}</b>\n</td>\n<td width="40%" valign="top" colspan="2">\n<div class="jd_page_nav" style="text-align:right">{page_navigation_pages_counter} {page_navigation}</div>\n</td>\n</tr>\n<tr>\n<td width="60%" valign="top" align="left">{count_of_sub_categories}</td>\n<td width="40%" valign="top" colspan="2">\n<div class="jd_sort_order" style="text-align:right">{sort_order}</div>\n</td>\n</tr></table>', '<table class="jd_footer" style="width:100%;">   \n    <tr>\n        <td style="width:100%; vertical-align:top">\n            <div class="jd_page_nav" style="text-align:right">{page_navigation}</div>\n        </td>\n    </tr>\n</table>\n<div style="text-align:left" class="back_button">{back_link}</div>', '', '{files_title_begin}<div style="background-color:#EFEFEF; padding:6px;">\n{files_title_text}</div>{files_title_end}\n\n<table class = "{featured_class}" width="100%" border="0" cellpadding="5" cellspacing="5" style="background:#F8F8F8;border-bottom:1px solid #cccccc;">\n     <tr valign="top">\n        <td width="80%" valign="top">{file_pic} <b>{file_title}</b>\n          {release} {pic_is_new} {pic_is_hot} {pic_is_updated}\n        </td>\n        <td>{rating}</td>\n       <td>{featured_pic}</td>\n     </tr>\n     <tr valign="top">\n        <td valign="top" class="jd_body">{description}</td>        \n        <td valign="top" class="jd_body" width="90%">{screenshot_begin}<a href="{screenshot}" rel="lightbox"> <img src="{thumbnail}" align="right" alt="" /></a>{screenshot_end}</td>\n     </tr>\n     <tr>\n        <td valign="top" width="10%" align="center">{preview_player}</td>\n     </tr>\n     <tr>\n        <td class = "{featured_detail_class}" style="background:#F8F8F8; padding:5px;" valign="top" width="90%"><small>{license_text} {author_text} {author_url_text} {created_date_value} {language_text} {system_text} {filesize_value} {hits_value}</small></td>\n<td> {sum_jcomments}</td>\n        <td valign="top" width="10%" align="center">\n            {url_download}\n        </td>\n     </tr>\n     <tr><td>{tags}</td></tr>\n</table>', '', 0, 1, '', 1, 0, 0, 0, '*', 0, '0000-00-00 00:00:00'),
(4, 'Standard Summary Layout v2.5', 3, '<table class="jd_top_navi" width="100%" style="border-bottom: 1px solid #cccccc;">\n<tr valign="top" border="0px">\n<td style="padding:5px;">{home_link}</td>\n<td style="padding:5px;">{search_link}</td>\n<td style="padding:5px;">{upload_link}</td>\n<td style="padding:5px;">{upper_link}</td>\n<td style="padding:5px;" align="right" valign="bottom">{category_listbox}</td>\n</tr>\n</table>', '<table class="jd_cat_subheader" width="100%">\n<tr><td><b>{summary_title}</b></td></tr>\n</table>', '<div style="text-align:left" class="back_button">{back_link}</div>', '', '<div class="jd_cat_title" style="padding:5px; font-size:10px; font-weight:normal;">{summary_pic} {title_text}</div>\n<div valign="top" style="padding:5px;">{download_liste}</div>\n{captcha}\n{password}\n<div style="padding:5px;">{aup_points_info}</div>\n<div style="padding:5px; text-align:center;"><b>{license_title}</b></div>\n<div>{license_text}</div>\n<div style="text-align:center">{license_checkbox}</div>\n<div style="text-align:center; padding:5px;">{download_link}</div>\n<div style="text-align:center;">{info_zip_file_size}</div>\n<div style="text-align:center;">{external_download_info}</div>\n<div style="text-align:center;">{user_limitations}</div>\n<div>{google_adsense}</div>', '', 1, 1, '', 1, 0, 0, 0, '*', 0, '0000-00-00 00:00:00'),
(5, 'Standard Details Layout v2.5 - Full Info', 5, '<table class="jd_top_navi" width="100%" style="border-bottom: 1px solid #cccccc;">\n<tr valign="top" border="0px">\n<td style="padding:5px;">{home_link}</td>\n<td style="padding:5px;">{search_link}</td>\n<td style="padding:5px;">{upload_link}</td>\n<td style="padding:5px;">{upper_link}</td>\n<td style="padding:5px;" align="right" valign="bottom">{category_listbox}</td>\n</tr>\n</table>', '<table class="jd_cat_subheader" width="100%">\n<tr><td><b>{detail_title}</b></td></tr>\n</table>', '<div style="text-align:left" class="back_button">{back_link}</div>', '', '<table class="jdtable" border="0" cellpadding="10" cellspacing="5" width="100%">\n    <tbody>\n    <tr>\n        <td colspan="1" height="38" valign="top"><span style="font-size: 13pt;">{file_pic} {file_title} {pic_is_new} {pic_is_hot} {pic_is_updated}</span></td>\n        <td>{featured_pic} </td>\n        <td style="text-align: center;">{rating}</td>\n    </tr>\n    <tr>\n        <td height="auto" valign="top" width="313">\n            <p>{description_long}</p>\n            <div id="thumbs">\n                <ul id="jdmain">\n                    <li>{screenshot_begin}<a href="{screenshot}" rel="lightbox"> <img src="{thumbnail}" alt="" align="right" border="0" hspace="10" vspace="0" /></a>{screenshot_end}</li>\n                    <li>{screenshot_begin2}<a href="{screenshot2}" rel="lightbox"> <img src="{thumbnail2}" alt="" align="right" border="0" hspace="10" vspace="0" /></a>{screenshot_end2}</li>\n                    <li>{screenshot_begin3}<a href="{screenshot3}" rel="lightbox"> <img src="{thumbnail3}" alt="" align="right" border="0" hspace="10" vspace="0" /></a>{screenshot_end3}</li>\n                    <li>{screenshot_begin4}<a href="{screenshot4}" rel="lightbox"> <img src="{thumbnail4}" alt="" align="right" border="0" hspace="10" vspace="0" /></a>{screenshot_end4}</li>\n                    <li>{screenshot_begin5}<a href="{screenshot5}" rel="lightbox"> <img src="{thumbnail5}" alt="" align="right" border="0" hspace="10" vspace="0" /></a>{screenshot_end5}</li>\n                    <li>{screenshot_begin6}<a href="{screenshot6}" rel="lightbox"> <img src="{thumbnail6}" alt="" align="right" border="0" hspace="10" vspace="0" /></a>{screenshot_end6}</li>\n                    <li>{screenshot_begin7}<a href="{screenshot7}" rel="lightbox"> <img src="{thumbnail7}" alt="" align="right" border="0" hspace="10" vspace="0" /></a>{screenshot_end7}</li>\n                    <li>{screenshot_begin8}<a href="{screenshot8}" rel="lightbox"> <img src="{thumbnail8}" alt="" align="right" border="0" hspace="10" vspace="0" /></a>{screenshot_end8}</li>\n                    <li>{screenshot_begin9}<a href="{screenshot9}" rel="lightbox"> <img src="{thumbnail9}" alt="" align="right" border="0" hspace="10" vspace="0" /></a>{screenshot_end9}</li>\n                    <li>{screenshot_begin10}<a href="{screenshot10}" rel="lightbox"> <img src="{thumbnail10}" alt="" align="right" border="0" hspace="10" vspace="0" /></a>{screenshot_end10}</li>\n                </ul>\n            <div style="clear: both;">{preview_player} </div>\n            </div>\n        </td>\n\n        <td valign="top" width="10"> </td>\n        <td valign="top" width="150">\n\n        <table class="jdtable" style="border-style: solid; border-width: thin; border-color: #CECECE; padding: 5px; background-color: #efefef;" border="0" cellpadding="0" cellspacing="0" width="100%">\n            <tbody>\n            <tr><td colspan="2" height="25" valign="top"><p style="background-color: #cecece; padding: 2px;" align="center"><strong>{details_block_title}</strong></p></td></tr>\n            <tr><td height="auto" valign="top">{release_title}</td><td style="text-align: right;" valign="top">{release}</td></tr>\n            <tr><td height="auto" valign="top">{filesize_title}</td><td style="text-align: right;" valign="top">{filesize_value}</td></tr>\n            <tr><td height="auto" valign="top">{hits_title}</td><td style="text-align: right;" valign="top">{hits_value}</td></tr>\n            <tr><td height="auto" valign="top">{language_title}</td><td style="text-align: right;" valign="top">{language_text}</td></tr>\n            <tr><td height="auto" valign="top">{license_title}</td><td style="text-align: right;" valign="top">{license_text}</td></tr>\n            <tr><td height="auto" valign="top">{author_title}</td><td style="text-align: right;" valign="top">{author_text}</td></tr>\n            <tr><td height="auto" valign="top">{author_url_title}</td><td style="text-align: right;" valign="top">{author_url_text}</td></tr>\n            <tr><td height="auto" valign="top">{price_title}</td><td style="text-align: right;" valign="top">{price_value}</td></tr>\n            <tr><td height="auto" valign="top">{created_date_title}</td><td style="text-align: right;" valign="top">{created_date_value}</td></tr>\n            <tr><td height="auto" valign="top">{created_by_title}</td><td style="text-align: right;" valign="top">{created_by_value}</td></tr>\n            <tr><td height="auto" valign="top">{modified_date_title}</td><td style="text-align: right;" valign="top">{modified_date_value}</td></tr>\n            <tr><td height="auto" valign="top">{modified_by_title}</td><td style="text-align: right;" valign="top">{modified_by_value}</td></tr>\n            <tr><td colspan="2" height="60" align="center" valign="middle"><p align="center">{url_download}</p></td></tr>\n            <tr><td colspan="2" height="auto" align="center" valign="middle">{mirror_1} {mirror_2}</td></tr>\n            <tr><td colspan="2" height="auto" align="center" valign="middle"><small>{report_link}</small></td></tr>\n            </tbody>\n        </table>\n        </td>\n    </tr>\n    </tbody>\n</table>\n{tags}', '', 1, 1, '', 1, 0, 0, 0, '*', 0, '0000-00-00 00:00:00'),
(6, 'Example Details Layout with Tabs v2.5', 5, '<table class="jd_top_navi" width="100%" style="border-bottom: 1px solid #cccccc;">\n<tr valign="top" border="0px">\n<td style="padding:5px;">{home_link}</td>\n<td style="padding:5px;">{search_link}</td>\n<td style="padding:5px;">{upload_link}</td>\n<td style="padding:5px;">{upper_link}</td>\n<td style="padding:5px;" align="right" valign="bottom">{category_listbox}</td>\n</tr>\n</table>', '<table class="jd_cat_subheader" width="100%">\n<tr><td><b>{detail_title}</b></td></tr>\n</table>', '<div style="text-align:left" class="back_button">{back_link}</div>', '', '<table width="100%" border="0" cellpadding="0" cellspacing="5">\n  <tr>\n    <td height="38" colspan="3" valign="middle"><h2>{file_pic} {file_title} {release} {pic_is_new}{pic_is_hot}{pic_is_updated}</h2></td>\n    <td valign="top">{rating}</td>\n  </tr>\n</table>\n{tags}\n{tabs begin}\n\n{tab description}\n<table width="100%" border="0" cellpadding="0" cellspacing="5">\n    <tr>\n    <td style="text-align: justify;vertical-align:top;">{description_long}</td>\n</tr></table>\n{tab description end}\n\n{tab pics}\n<table width="100%" border="0" cellpadding="0" cellspacing="5">\n<tr>\n<td style="text-align: justify;vertical-align:top;">\n\n<div style="padding:5px 5px 10px 5px;overflow: hidden;margin-bottom: 10px;margin-top: 8px;">\n\n  <div style="float: left;"><div style="display: block;text-align: center !important;vertical-align: middle !important;">{screenshot_begin}<a href="{screenshot}" rel="lightbox"><img style="border : 1px solid lightgray;  padding:4px; margin-right: 5px;" src="{thumbnail}" align="right" /></a>{screenshot_end}\n  </div>\n  </div>\n  \n  <div style="float: left;"><div style="display: block;text-align: center !important;vertical-align: middle !important;">{screenshot_begin2}<a href="{screenshot2}" rel="lightbox"><img style="border : 1px solid lightgray;  padding:4px; margin-right: 5px;" src="{thumbnail2}" align="right" /></a>{screenshot_end2}\n  </div>\n  </div>\n  \n  <div style="float: left;"><div style="display: block;text-align: center !important;vertical-align: middle !important;">{screenshot_begin3}<a href="{screenshot3}" rel="lightbox"><img style="border : 1px solid lightgray;  padding:4px; margin-right: 5px;" src="{thumbnail3}" align="right" /></a>{screenshot_end3}\n  </div>\n  </div>\n  \n  <div style="float: left;"><div style="display: block;text-align: center !important;vertical-align: middle !important;">{screenshot_begin4}<a href="{screenshot4}" rel="lightbox"><img style="border : 1px solid lightgray;  padding:4px; margin-right: 5px;" src="{thumbnail4}" align="right" /></a>{screenshot_end4}\n  </div>\n  </div>\n  \n  <div style="float: left;"><div style="display: block;text-align: center !important;vertical-align: middle !important;">{screenshot_begin5}<a href="{screenshot5}" rel="lightbox"><img style="border : 1px solid lightgray;  padding:4px; margin-right: 5px;" src="{thumbnail5}" align="right" /></a>{screenshot_end5}\n  </div>\n</div>\n\n</div>\n\n</td>\n</tr>\n</table>\n{tab pics end}\n\n{tab mp3}\n<table width="100%" border="0" cellpadding="0" cellspacing="5">\n    <tr>\n       <td style="text-align: justify;vertical-align:top;">{mp3_player}</td>\n    </tr>\n    <tr>\n       <td style="text-align: justify;vertical-align:top;">{mp3_id3_tag}</td>\n    </tr>\n</table>\n{tab mp3 end}\n\n{tab data}\n<div style="margin-left: 5px;margin-bottom: 15px;clear: both;padding: 8px;background-color: #f4f4f4;border: 1px solid #dfdfdf;margin-top: 3px;border-radius: 5px;">  \n    <table width="100%" border="0" cellpadding="0" cellspacing="0" style="padding:5px 10px 5px 10px;">\n   \n    <tr>\n        <td style="margin: 0px;padding: 0px 0px 5px;width: 100px;vertical-align: top;color: #464646;">\n    <span style="border-bottom: 1px dotted #b7b7b7;padding: 5px 0px;width: 100px;position: absolute;display: block;z-index: 0;"></span>\n    <span style="font-weight: bold;padding-right: 3px;background-color: #f4f4f4;position: relative;">{release_title}&#160;</span></td>\n    <td style="padding: 0px 0px 0px 6px;width: 200px;vertical-align: top;">{release}&#160;</td>\n    \n        <td style="margin: 0px;padding: 0px 0px 5px;width: 100px;vertical-align: top;color: #464646;">\n    <span style="border-bottom: 1px dotted #b7b7b7;padding: 5px 0px;width: 100px;position: absolute;display: block;z-index: 0;"></span>\n    <span style="font-weight: bold;padding-right: 3px;background-color: #f4f4f4;position: relative;">{hits_title}&#160;</span></td>\n    <td style="padding: 0px 0px 0px 6px;width: 200px;vertical-align: top;">{hits_value}&#160;</td>\n    </tr>\n\n    <tr>\n        <td style="margin: 0px;padding: 0px 0px 5px;width: 100px;vertical-align: top;color: #464646;">\n    <span style="border-bottom: 1px dotted #b7b7b7;padding: 5px 0px;width: 100px;position: absolute;display: block;z-index: 0;"></span>\n    <span style="font-weight: bold;padding-right: 3px;background-color: #f4f4f4;position: relative;">{filesize_title}&#160;</span></td>\n    <td style="padding: 0px 0px 0px 6px;width: 200px;vertical-align: top;">{filesize_value}&#160;</td>\n    \n        <td style="margin: 0px;padding: 0px 0px 5px;width: 100px;vertical-align: top;color: #464646;">\n    <span style="border-bottom: 1px dotted #b7b7b7;padding: 5px 0px;width: 100px;position: absolute;display: block;z-index: 0;"></span>\n    <span style="font-weight: bold;padding-right: 3px;background-color: #f4f4f4;position: relative;">{created_date_title}&#160;</span></td>\n    <td style="padding: 0px 0px 0px 6px;width: 200px;vertical-align: top;">{created_date_value}&#160;</td>\n    </tr>\n    \n    <tr>\n    <td style="margin: 0px;padding: 0px 0px 5px;width: 100px;vertical-align: top;color: #464646;">\n    <span style="border-bottom: 1px dotted #b7b7b7;padding: 5px 0px;width: 100px;position: absolute;display: block;z-index: 0;"></span>\n    <span style="font-weight: bold;padding-right: 3px;background-color: #f4f4f4;position: relative;">{language_title}&#160;</span></td>\n    <td style="padding: 0px 0px 0px 6px;width: 200px;vertical-align: top;">{language_text}&#160;</td>\n    \n        <td style="margin: 0px;padding: 0px 0px 5px;width: 100px;vertical-align: top;color: #464646;">\n    <span style="border-bottom: 1px dotted #b7b7b7;padding: 5px 0px;width: 100px;position: absolute;display: block;z-index: 0;"></span>\n    <span style="font-weight: bold;padding-right: 3px;background-color: #f4f4f4;position: relative;">{modified_date_title}&#160;</span></td>\n    <td style="padding: 0px 0px 0px 6px;width: 200px;vertical-align: top;">{modified_date_value}&#160;</td>\n    </tr>\n\n    <tr>\n        <td style="margin: 0px;padding: 0px 0px 5px;width: 100px;vertical-align: top;color: #464646;">\n    <span style="border-bottom: 1px dotted #b7b7b7;padding: 5px 0px;width: 100px;position: absolute;display: block;z-index: 0;"></span>\n    <span style="font-weight: bold;padding-right: 3px;background-color: #f4f4f4;position: relative;">{price_title}&#160;</span></td>\n    <td style="padding: 0px 0px 0px 6px;width: 200px;vertical-align: top;">{price_value}&#160;</td>\n    \n        <td style="margin: 0px;padding: 0px 0px 5px;width: 100px;vertical-align: top;color: #464646;">\n    <span style="border-bottom: 1px dotted #b7b7b7;padding: 5px 0px;width: 100px;position: absolute;display: block;z-index: 0;"></span>\n    <span style="font-weight: bold;padding-right: 3px;background-color: #f4f4f4;position: relative;">{created_by_title}&#160;</span></td>\n        <td style="padding: 0px 0px 0px 6px;width: 200px;vertical-align: top;">{created_by_value}&#160;</td>\n    </tr>\n\n    <tr>\n        <td style="margin: 0px;padding: 0px 0px 5px;width: 100px;vertical-align: top;color: #464646;">\n    <span style="border-bottom: 1px dotted #b7b7b7;padding: 5px 0px;width: 100px;position: absolute;display: block;z-index: 0;"></span>\n    <span style="font-weight: bold;padding-right: 3px;background-color: #f4f4f4;position: relative;">{license_title}&#160;</span></td>\n        <td style="padding: 0px 0px 0px 6px;width: 200px;vertical-align: top;">{license_text}&#160;</td>\n    \n        <td style="margin: 0px;padding: 0px 0px 5px;width: 100px;vertical-align: top;color: #464646;">\n    <span style="border-bottom: 1px dotted #b7b7b7;padding: 5px 0px;width: 100px;position: absolute;display: block;z-index: 0;"></span>\n    <span style="font-weight: bold;padding-right: 3px;background-color: #f4f4f4;position: relative;">{modified_by_title}&#160;</span></td>\n        <td style="padding: 0px 0px 0px 6px;width: 200px;vertical-align: top;">{modified_by_value}&#160;</td>\n    </tr>\n    \n    <tr>\n       <td style="margin: 0px;padding: 0px 0px 5px;width: 100px;vertical-align: top;color: #464646;">\n    <span style="border-bottom: 1px dotted #b7b7b7;padding: 5px 0px;width: 100px;position: absolute;display: block;z-index: 0;"></span>\n    <span style="font-weight: bold;padding-right: 3px;background-color: #f4f4f4;position: relative;">{author_title}&#160;</span></td>\n    <td style="padding: 0px 0px 0px 6px;width: 200px;vertical-align: top;">{author_text}&#160;</td>\n    \n        <td style="margin: 0px;padding: 0px 0px 5px;width: 100px;vertical-align: top;color: #464646;">\n    <span style="border-bottom: 1px dotted #b7b7b7;padding: 5px 0px;width: 100px;position: absolute;display: block;z-index: 0;"></span>\n    <span style="font-weight: bold;padding-right: 3px;background-color: #f4f4f4;position: relative;">{md5_title}&#160;</span></td>\n    <td style="padding: 0px 0px 0px 6px;width: 200px;vertical-align: top;">{md5_value}&#160;</td>\n    </tr>\n\n    <tr>\n    <td style="margin: 0px;padding: 0px 0px 5px;width: 100px;vertical-align: top;color: #464646;">\n    <span style="border-bottom: 1px dotted #b7b7b7;padding: 5px 0px;width: 100px;position: absolute;display: block;z-index: 0;"></span>\n    <span style="font-weight: bold;padding-right: 3px;background-color: #f4f4f4;position: relative;">{author_url_title}&#160;</span></td>\n    <td style="padding: 0px 0px 0px 6px;width: 200px;vertical-align: top;">{author_url_text}&#160;</td>\n\n        <td style="margin: 0px;padding: 0px 0px 5px;width: 100px;vertical-align: top;color: #464646;">\n    <span style="border-bottom: 1px dotted #b7b7b7;padding: 5px 0px;width: 100px;position: absolute;display: block;z-index: 0;"></span>\n    <span style="font-weight: bold;padding-right: 3px;background-color: #f4f4f4;position: relative;">{sha1_title}&#160;</span></td>\n    <td style="padding: 0px 0px 0px 6px;width: 200px;vertical-align: top;">{sha1_value}&#160;</td>\n\n    </tr>\n</table>\n</div>\n{tab data end}\n\n{tab download}\n<table width="100%" border="0" cellpadding="0" cellspacing="5">\n      <tr>\n        <td height="20" align="center">{file_name_title}: {file_name}</td>\n      </tr>\n      <tr>\n        <td height="20" align="center">{filesize_title}: {filesize_value}</td>\n      </tr>\n\n      <tr>\n         <td align="center" valign="middle">{url_download} {mirror_1} {mirror_2}\n         </td>\n      </tr>\n</table>\n{tab download end}\n{tabs end}', '', 0, 1, '', 1, 0, 0, 0, '*', 0, '0000-00-00 00:00:00'),
(7, 'Example Details Layout v2.5', 5, '<table class="jd_top_navi" width="100%" style="border-bottom: 1px solid #cccccc;">\n<tr valign="top" border="0px">\n<td style="padding:5px;">{home_link}</td>\n<td style="padding:5px;">{search_link}</td>\n<td style="padding:5px;">{upload_link}</td>\n<td style="padding:5px;">{upper_link}</td>\n<td style="padding:5px;" align="right" valign="bottom">{category_listbox}</td>\n</tr>\n</table>', '<table class="jd_cat_subheader" width="100%">\n<tr><td><b>{detail_title}</b></td></tr>\n</table>', '<div style="text-align:left" class="back_button">{back_link}</div>', '', '<div style="padding-top:15px;padding-bottom:10px;" height="38" colspan="3" valign="top"><span style="font-weight: bold;font-size:13pt;">{file_pic} {file_title} {pic_is_new} {pic_is_hot} {pic_is_updated}</span>\n     <div style="float: right;">{rating}</div>\n</div>\n{tags}\n<div>{description_long}</div>\n<div>{mp3_player}</div>\n<div>{mp3_id3_tag}</div>\n\n<div style="padding:5px 5px 10px 5px;overflow: hidden;margin-bottom: 10px;margin-top: 8px;">\n<div style="float: left;"><div style="display: block;text-align: center !important;vertical-align: middle !important;">{screenshot_begin}<a href="{screenshot}" rel="lightbox"><img style="border : 1px solid lightgray;  padding:4px; margin-right: 5px;" src="{thumbnail}" align="right" /></a>{screenshot_end}</div></div>\n<div style="float: left;"><div style="display: block;text-align: center !important;vertical-align: middle !important;">{screenshot_begin2}<a href="{screenshot2}" rel="lightbox"><img style="border : 1px solid lightgray;  padding:4px; margin-right: 5px;" src="{thumbnail2}" align="right" /></a>{screenshot_end2}</div></div>\n<div style="float: left;"><div style="display: block;text-align: center !important;vertical-align: middle !important;">{screenshot_begin3}<a href="{screenshot3}" rel="lightbox"><img style="border : 1px solid lightgray;  padding:4px; margin-right: 5px;" src="{thumbnail3}" align="right" /></a>{screenshot_end3}</div></div>\n<div style="float: left;"><div style="display: block;text-align: center !important;vertical-align: middle !important;">{screenshot_begin4}<a href="{screenshot4}" rel="lightbox"><img style="border : 1px solid lightgray;  padding:4px; margin-right: 5px;" src="{thumbnail4}" align="right" /></a>{screenshot_end4}</div></div>\n<div style="float: left;"><div style="display: block;text-align: center !important;vertical-align: middle !important;">{screenshot_begin5}<a href="{screenshot5}" rel="lightbox"><img style="border : 1px solid lightgray;  padding:4px; margin-right: 5px;" src="{thumbnail5}" align="right" /></a>{screenshot_end5}</div></div>\n</div>\n\n<div style="margin-left: 5px;margin-bottom: 15px;clear: both;padding: 8px;background-color: #f4f4f4;border: 1px solid #dfdfdf;margin-top: 3px;border-radius: 5px;">  \n    <table width="100%" border="0" cellpadding="0" cellspacing="0" style="padding:5px 10px 5px 10px;">\n   \n    <tr>\n        <td style="margin: 0px;padding: 0px 0px 5px;width: 100px;vertical-align: top;color: #464646;">\n    <span style="border-bottom: 1px dotted #b7b7b7;padding: 5px 0px;width: 100px;position: absolute;display: block;z-index: 0;"></span>\n    <span style="font-weight: bold;padding-right: 3px;background-color: #f4f4f4;position: relative;">{release_title}&#160;</span></td>\n    <td style="padding: 0px 0px 0px 6px;width: 200px;vertical-align: top;">{release}&#160;</td>\n    \n        <td style="margin: 0px;padding: 0px 0px 5px;width: 100px;vertical-align: top;color: #464646;">\n    <span style="border-bottom: 1px dotted #b7b7b7;padding: 5px 0px;width: 100px;position: absolute;display: block;z-index: 0;"></span>\n    <span style="font-weight: bold;padding-right: 3px;background-color: #f4f4f4;position: relative;">{hits_title}&#160;</span></td>\n    <td style="padding: 0px 0px 0px 6px;width: 200px;vertical-align: top;">{hits_value}&#160;</td>\n    </tr>\n\n    <tr>\n        <td style="margin: 0px;padding: 0px 0px 5px;width: 100px;vertical-align: top;color: #464646;">\n    <span style="border-bottom: 1px dotted #b7b7b7;padding: 5px 0px;width: 100px;position: absolute;display: block;z-index: 0;"></span>\n    <span style="font-weight: bold;padding-right: 3px;background-color: #f4f4f4;position: relative;">{filesize_title}&#160;</span></td>\n    <td style="padding: 0px 0px 0px 6px;width: 200px;vertical-align: top;">{filesize_value}&#160;</td>\n    \n        <td style="margin: 0px;padding: 0px 0px 5px;width: 100px;vertical-align: top;color: #464646;">\n    <span style="border-bottom: 1px dotted #b7b7b7;padding: 5px 0px;width: 100px;position: absolute;display: block;z-index: 0;"></span>\n    <span style="font-weight: bold;padding-right: 3px;background-color: #f4f4f4;position: relative;">{created_date_title}&#160;</span></td>\n    <td style="padding: 0px 0px 0px 6px;width: 200px;vertical-align: top;">{created_date_value}&#160;</td>\n    </tr>\n    \n    <tr>\n    <td style="margin: 0px;padding: 0px 0px 5px;width: 100px;vertical-align: top;color: #464646;">\n    <span style="border-bottom: 1px dotted #b7b7b7;padding: 5px 0px;width: 100px;position: absolute;display: block;z-index: 0;"></span>\n    <span style="font-weight: bold;padding-right: 3px;background-color: #f4f4f4;position: relative;">{language_title}&#160;</span></td>\n    <td style="padding: 0px 0px 0px 6px;width: 200px;vertical-align: top;">{language_text}&#160;</td>\n    \n        <td style="margin: 0px;padding: 0px 0px 5px;width: 100px;vertical-align: top;color: #464646;">\n    <span style="border-bottom: 1px dotted #b7b7b7;padding: 5px 0px;width: 100px;position: absolute;display: block;z-index: 0;"></span>\n    <span style="font-weight: bold;padding-right: 3px;background-color: #f4f4f4;position: relative;">{modified_date_title}&#160;</span></td>\n    <td style="padding: 0px 0px 0px 6px;width: 200px;vertical-align: top;">{modified_date_value}&#160;</td>\n    </tr>\n\n    <tr>\n        <td style="margin: 0px;padding: 0px 0px 5px;width: 100px;vertical-align: top;color: #464646;">\n    <span style="border-bottom: 1px dotted #b7b7b7;padding: 5px 0px;width: 100px;position: absolute;display: block;z-index: 0;"></span>\n    <span style="font-weight: bold;padding-right: 3px;background-color: #f4f4f4;position: relative;">{price_title}&#160;</span></td>\n    <td style="padding: 0px 0px 0px 6px;width: 200px;vertical-align: top;">{price_value}&#160;</td>\n    \n        <td style="margin: 0px;padding: 0px 0px 5px;width: 100px;vertical-align: top;color: #464646;">\n    <span style="border-bottom: 1px dotted #b7b7b7;padding: 5px 0px;width: 100px;position: absolute;display: block;z-index: 0;"></span>\n    <span style="font-weight: bold;padding-right: 3px;background-color: #f4f4f4;position: relative;">{created_by_title}&#160;</span></td>\n        <td style="padding: 0px 0px 0px 6px;width: 200px;vertical-align: top;">{created_by_value}&#160;</td>\n    </tr>\n\n    <tr>\n        <td style="margin: 0px;padding: 0px 0px 5px;width: 100px;vertical-align: top;color: #464646;">\n    <span style="border-bottom: 1px dotted #b7b7b7;padding: 5px 0px;width: 100px;position: absolute;display: block;z-index: 0;"></span>\n    <span style="font-weight: bold;padding-right: 3px;background-color: #f4f4f4;position: relative;">{license_title}&#160;</span></td>\n        <td style="padding: 0px 0px 0px 6px;width: 200px;vertical-align: top;">{license_text}&#160;</td>\n    \n        <td style="margin: 0px;padding: 0px 0px 5px;width: 100px;vertical-align: top;color: #464646;">\n    <span style="border-bottom: 1px dotted #b7b7b7;padding: 5px 0px;width: 100px;position: absolute;display: block;z-index: 0;"></span>\n    <span style="font-weight: bold;padding-right: 3px;background-color: #f4f4f4;position: relative;">{modified_by_title}&#160;</span></td>\n        <td style="padding: 0px 0px 0px 6px;width: 200px;vertical-align: top;">{modified_by_value}&#160;</td>\n    </tr>\n    \n    <tr>\n       <td style="margin: 0px;padding: 0px 0px 5px;width: 100px;vertical-align: top;color: #464646;">\n    <span style="border-bottom: 1px dotted #b7b7b7;padding: 5px 0px;width: 100px;position: absolute;display: block;z-index: 0;"></span>\n    <span style="font-weight: bold;padding-right: 3px;background-color: #f4f4f4;position: relative;">{author_title}&#160;</span></td>\n    <td style="padding: 0px 0px 0px 6px;width: 200px;vertical-align: top;">{author_text}&#160;</td>\n    \n        <td style="margin: 0px;padding: 0px 0px 5px;width: 100px;vertical-align: top;color: #464646;">\n    <span style="border-bottom: 1px dotted #b7b7b7;padding: 5px 0px;width: 100px;position: absolute;display: block;z-index: 0;"></span>\n    <span style="font-weight: bold;padding-right: 3px;background-color: #f4f4f4;position: relative;">&#160;</span></td>\n    <td style="padding: 0px 0px 0px 6px;width: 200px;vertical-align: top;">&#160;</td>\n    </tr>\n\n    <tr>\n    <td style="margin: 0px;padding: 0px 0px 5px;width: 100px;vertical-align: top;color: #464646;">\n    <span style="border-bottom: 1px dotted #b7b7b7;padding: 5px 0px;width: 100px;position: absolute;display: block;z-index: 0;"></span>\n    <span style="font-weight: bold;padding-right: 3px;background-color: #f4f4f4;position: relative;">{author_url_title}&#160;</span></td>\n    <td style="padding: 0px 0px 0px 6px;width: 200px;vertical-align: top;">{author_url_text}&#160;</td>\n\n        <td style="margin: 0px;padding: 0px 0px 5px;width: 100px;vertical-align: top;color: #464646;">\n    <span style="border-bottom: 1px dotted #b7b7b7;padding: 5px 0px;width: 100px;position: absolute;display: block;z-index: 0;"></span>\n    <span style="font-weight: bold;padding-right: 3px;background-color: #f4f4f4;position: relative;">&#160;</span></td>\n    <td style="padding: 0px 0px 0px 6px;width: 200px;vertical-align: top;">&#160;</td>\n    </tr>\n    \n    <tr>\n    <td style="padding-top:15px;padding-bottom:10px;" colspan="4" align="center" valign="middle">\n    <p align="center"><font size="2">{url_download}</font>{mirror_1} {mirror_2}</p></td>\n    </tr>\n    <tr><td style="padding-top:5px;padding-bottom:5px; font-size:11px;" colspan="4" align="center" valign="middle">{report_link}</td></tr>\n</table>\n</div>', '', 0, 1, '', 1, 0, 0, 0, '*', 0, '0000-00-00 00:00:00'),
(8, 'Standard Files Layout with Checkboxes v2.5', 2, '<table class="jd_top_navi" width="100%" style="border-bottom: 1px solid #cccccc;">\n<tr valign="top" border="0px">\n<td style="padding:5px;">{home_link}</td>\n<td style="padding:5px;">{search_link}</td>\n<td style="padding:5px;">{upload_link}</td>\n<td style="padding:5px;">{upper_link}</td>\n<td style="padding:5px;" align="right" valign="bottom">{category_listbox}</td>\n</tr>\n</table>', '<table class="jd_cat_subheader" width="100%">\n<tr>\n<td width="60%" valign="top">\n<b>{subheader_title}</b>\n</td>\n<td width="40%" valign="top" colspan="2">\n<div class="jd_page_nav" style="text-align:right">{page_navigation_pages_counter} {page_navigation}</div>\n</td>\n</tr>\n<tr>\n<td width="60%" valign="top" align="left">{count_of_sub_categories}</td>\n<td width="40%" valign="top" colspan="2">\n<div class="jd_sort_order" style="text-align:right">{sort_order}</div>\n</td>\n</tr></table>', '<table class="jd_footer" style="width:100%;">   \n    <tr>\n        <td style="width:100%; vertical-align:top">\n            <div class="jd_page_nav" style="text-align:right">{page_navigation}</div>\n        </td>\n    </tr>\n</table>\n<div style="text-align:left" class="back_button">{back_link}</div>', '', '{files_title_begin}<div style="background-color:#EFEFEF; padding:6px;">{files_title_text}</div>{files_title_end}\n\n<table class="{featured_class}" width="100%" style="padding:3px; background-color:#F5F5F5;">\n   <tr valign="middle">\n      <td width="55%">{file_pic} {file_title} {release} {pic_is_new} {pic_is_hot} {pic_is_updated}</td>\n      <td width="15%">\n          <p align="center">{rating}</p>\n      </td>\n       <td width="15%">\n          <p align="center">{featured_pic}</p>\n      </td>\n      <td width="15%">\n          <p style="text-align: right;">Select {checkbox_list}</p>\n      </td>\n   </tr>\n   <tr><td>{tags}</td></tr>\n</table>\n<table class="{featured_detail_class}" width="100%" style="padding:3px;">    \n   <tr>\n      <td width="75%" align="left" valign="top">{description}<br />{mp3_player}<br />{mp3_id3_tag}</td>\n      <td valign="top">{screenshot_begin}<a href="{screenshot}" rel="lightbox"> <img src="{thumbnail}" align="right" /></a>{screenshot_end}\n      </td>\n      <td width="15%" valign="top"> {created_date_title}<br /> {filesize_title}<br /> {hits_title}</td>\n      <td text-align="right" width="10%" valign="top">{created_date_value}<br />{filesize_value}<br />{hits_value}</td>\n   </tr>\n</table>', '', 0, 1, '', 1, 0, 0, 1, '*', 0, '0000-00-00 00:00:00'),
(9, 'Standard Files Layout without Checkboxes v2.5', 2, '<table class="jd_top_navi" width="100%" style="border-bottom: 1px solid #cccccc;">\n<tr valign="top" border="0px">\n<td style="padding:5px;">{home_link}</td>\n<td style="padding:5px;">{search_link}</td>\n<td style="padding:5px;">{upload_link}</td>\n<td style="padding:5px;">{upper_link}</td>\n<td style="padding:5px;" align="right" valign="bottom">{category_listbox}</td>\n</tr>\n</table>', '<table class="jd_cat_subheader" width="100%">\n<tr>\n<td width="60%" valign="top">\n<b>{subheader_title}</b>\n</td>\n<td width="40%" valign="top" colspan="2">\n<div class="jd_page_nav" style="text-align:right">{page_navigation_pages_counter} {page_navigation}</div>\n</td>\n</tr>\n<tr>\n<td width="60%" valign="top" align="left">{count_of_sub_categories}</td>\n<td width="40%" valign="top" colspan="2">\n<div class="jd_sort_order" style="text-align:right">{sort_order}</div>\n</td>\n</tr></table>', '<table class="jd_footer" style="width:100%;">   \n    <tr>\n        <td style="width:100%; vertical-align:top">\n            <div class="jd_page_nav" style="text-align:right">{page_navigation}</div>\n        </td>\n    </tr>\n</table>\n<div style="text-align:left" class="back_button">{back_link}</div>', '', '{files_title_begin}<div style="background-color:#EFEFEF; padding:6px;">{files_title_text}</div>{files_title_end}\n\n<table class="{featured_class}" width="100%" style="padding:3px; background-color:#F5F5F5;">\n   <tr valign="middle">\n      <td width="55%">{file_pic} {file_title} {release} {pic_is_new} {pic_is_hot} {pic_is_updated}</td>\n      <td width="20%">\n          <p align="center">{rating}</p>\n      </td>\n      <td width="10%">\n          <p align="center">{featured_pic}</p>\n      </td>\n      <td width="15%">\n          <p align="center">{url_download}</p>\n      </td>\n   </tr>\n   <tr><td>{tags}</td></tr>\n</table>\n<table class="{featured_detail_class}" width="100%" style="padding:3px;">    \n   <tr>\n      <td width="75%" align="left" valign="top">{description}<br />{mp3_player}<br />{mp3_id3_tag}</td>\n      <td valign="top">{screenshot_begin}<a href="{screenshot}" rel="lightbox"> <img src="{thumbnail}" align="right" /></a>{screenshot_end}\n      </td>\n      <td width="15%" valign="top"> {created_date_title}<br /> {filesize_title}<br /> {hits_title}</td>\n      <td text-align="right" width="10%" valign="top">{created_date_value}<br />{filesize_value}<br />{hits_value}</td>\n   </tr>\n</table>', '', 1, 1, '', 1, 1, 0, 1, '*', 0, '0000-00-00 00:00:00'),
(10, 'Sample with 4 columns', 1, '<table class="jd_top_navi" width="100%" style="border-bottom: 1px solid #cccccc;">\n<tr valign="top" border="0px">\n<td style="padding:5px;">{home_link}</td>\n<td style="padding:5px;">{search_link}</td>\n<td style="padding:5px;">{upload_link}</td>\n<td style="padding:5px;">{upper_link}</td>\n<td style="padding:5px;" align="right" valign="bottom">{category_listbox}</td>\n</tr>\n</table>', '<table class="jd_cat_subheader" width="100%">\n<tr>\n<td width="60%" valign="top">\n<b>{subheader_title}</b>\n</td>\n<td width="40%" valign="top" colspan="2">\n<div class="jd_page_nav" style="text-align:right">{page_navigation_pages_counter} {page_navigation}</div>\n</td>\n</tr>\n<tr>\n<td width="60%" valign="top" align="left">{count_of_sub_categories}</td>\n<td width="40%" valign="top" colspan="2">\n<div class="jd_sort_order" style="text-align:right">{sort_order}</div>\n</td>\n</tr></table>', '<table class="jd_footer" style="width:100%;">   \n    <tr>\n        <td style="width:100%; vertical-align:top">\n            <div class="jd_page_nav" style="text-align:right">{page_navigation}</div>\n        </td>\n    </tr>\n</table>\n<div style="text-align:left" class="back_button">{back_link}</div>', '', '{cat_info_begin}\n  <table width="100%">\n    <tr valign="top" border="0px">\n      <td width="25%" style="padding:5px; text-align:center">{cat_pic1}<b><br />{cat_title1}</b><br />{sum_subcats1}<br />{sum_files_cat1}</td>\n      <td width="25%" style="padding:5px; text-align:center">{cat_pic2}<b><br />{cat_title2}</b><br />{sum_subcats2}<br />{sum_files_cat2}</td>\n      <td width="25%" style="padding:5px; text-align:center">{cat_pic3}<b><br />{cat_title3}</b><br />{sum_subcats3}<br />{sum_files_cat3}</td>\n      <td width="25%" style="padding:5px; text-align:center">{cat_pic4}<b><br />{cat_title4}</b><br />{sum_subcats4}<br />{sum_files_cat4}</td>\n    </tr>\n  </table>\n{cat_info_end}', '', 0, 1, 'Here is a sample layout with 4 columns. If you create your own layout with more then one column, you must observe the rules which may be found in the FAQ.', 4, 0, 0, 0, '*', 0, '0000-00-00 00:00:00'),
(11, 'Standard Categories Layout for paginated Subcategories.', 1, '', '', '', '{cat_title_begin}<div style="background-color:#EFEFEF; padding:6px;">{subcats_title_text}</div>\n<div id="pageNavPosition" class="pageNavPosition"> </div>\n{cat_title_end}\n<table id="results" class="jdsubcats-table" style="border-bottom: 1px solid #cccccc;" width="100%" /><tr> </tr>', '{cat_info_begin}\n  <tr valign="top" border="0px">\n    <td width="65%" style="padding:5px;">{cat_pic}<b>{cat_title}</b></td>\n    <td width="20%" style="padding:5px; text-align:right">{sum_subcats}</td>\n    <td width="15%" style="padding:5px; text-align:right">{sum_files_cat}</td>\n  </tr>\n{cat_info_end}', '</table>', 0, 1, 'This is a subcategory layout used in categories when subcategory pagination is enabled by the ''Show page navigation for subcategories?'' option in the Frontend tab of the Configuration. This layout must not be activated because it is automatically used when the above option is selected. It is not intended as a standalone category layout.', 1, 0, 1, 0, '*', 0, '0000-00-00 00:00:00'),
(12, 'Alternate Files Layout v2.5', 2, '<table class="jd_top_navi" width="100%" style="border-bottom: 1px solid #cccccc;">\n<tr valign="top" border="0px">\n<td style="padding:5px;">{home_link}</td>\n<td style="padding:5px;">{search_link}</td>\n<td style="padding:5px;">{upload_link}</td>\n<td style="padding:5px;">{upper_link}</td>\n<td style="padding:5px;" align="right" valign="bottom">{category_listbox}</td>\n</tr>\n</table>', '<table class="jd_cat_subheader" width="100%">\n<tr>\n<td width="60%" valign="top">\n<b>{subheader_title}</b>\n</td>\n<td width="40%" valign="top" colspan="2">\n<div class="jd_page_nav" style="text-align:right">{page_navigation_pages_counter} {page_navigation}</div>\n</td>\n</tr>\n<tr>\n<td width="60%" valign="top" align="left">{count_of_sub_categories}</td>\n<td width="40%" valign="top" colspan="2">\n<div class="jd_sort_order" style="text-align:right">{sort_order}</div>\n</td>\n</tr></table>', '<table class="jd_footer" style="width:100%;">   \n    <tr>\n        <td style="width:100%; vertical-align:top">\n            <div class="jd_page_nav" style="text-align:right">{page_navigation}</div>\n        </td>\n    </tr>\n</table>\n<div style="text-align:left" class="back_button">{back_link}</div>', '<div id="jd"> \n    <div class="items">', '{files_title_begin}<div style="background-color:#EFEFEF; padding:6px; border-width:1px;border-bottom-style:solid; border-color: #cccccc;">\n{files_title_text}</div>{files_title_end}\n\n<div class="jd_row">\n    <div class="width100 first-cell">\n        <div class="teaser-item">\n        <div class="pos-media media-left">\n            {file_pic}\n        </div>\n        <div class="pos-media media-right">\n                {rating}\n        </div>\n        <h2 class="pos-title"> {file_title} {pic_is_new} {pic_is_hot} {pic_is_updated}</h2>\n        <ul class="pos-specification">\n            <li class="element element-itemmodified first">\n                <strong>{created_date_title}: </strong> {created_date_value}\n            </li>\n            <li class="element element-text">\n                <strong>{release_title}: </strong>{release}\n            </li>\n            <li class="element element-text">\n                <strong>{license_title}: </strong>{license_text}\n            </li>\n            <li class="element element-text">\n                <strong>{filesize_title}: </strong>{filesize_value}\n            </li>\n            <li class="element element-text">\n                {url_download}\n            </li>\n        </ul>\n        <ul class="pos-specification">\n            <li class="element-text last">\n                  {screenshot_begin}<a href="{screenshot}" rel="lightbox"> <img class="list-img" src="{thumbnail}" /></a>{screenshot_end} {description}\n            </li>\n        </ul>\n        <div>\n            {tags}\n        </div>\n        <div class="pos-button">\n             {link_to_details}\n        </div>\n    </div>\n    </div>\n</div>', '    </div>\n</div>', 0, 1, '', 1, 1, 0, 1, '*', 0, '0000-00-00 00:00:00'),
(13, 'Standard Search Form Layout v2.5', 7, '<table class="jd_top_navi" width="100%" style="border-bottom: 1px solid #cccccc;">\n<tr valign="top" border="0px">\n<td style="padding:5px;">{home_link}</td>\n<td style="padding:5px;">{search_link}</td>\n<td style="padding:5px;">{upload_link}</td>\n<td style="padding:5px;">{upper_link}</td>\n<td style="padding:5px;" align="right" valign="bottom">{category_listbox}</td>\n</tr>\n</table>', '', '<div style="text-align:left" class="back_button">{back_link}</div>', '', '', '', 1, 1, '', 4, 0, 0, 0, '*', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_jdownloads_usergroups_limits`
--

CREATE TABLE IF NOT EXISTS `c39g0_jdownloads_usergroups_limits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `importance` smallint(6) NOT NULL DEFAULT '0',
  `group_id` int(10) NOT NULL,
  `download_limit_daily` int(10) NOT NULL DEFAULT '0',
  `download_limit_daily_msg` text NOT NULL,
  `download_limit_weekly` int(10) NOT NULL DEFAULT '0',
  `download_limit_weekly_msg` text NOT NULL,
  `download_limit_monthly` int(10) NOT NULL DEFAULT '0',
  `download_limit_monthly_msg` text NOT NULL,
  `download_volume_limit_daily` int(10) NOT NULL DEFAULT '0',
  `download_volume_limit_daily_msg` text NOT NULL,
  `download_volume_limit_weekly` int(10) NOT NULL DEFAULT '0',
  `download_volume_limit_weekly_msg` text NOT NULL,
  `download_volume_limit_monthly` int(10) NOT NULL DEFAULT '0',
  `download_volume_limit_monthly_msg` text NOT NULL,
  `how_many_times` int(10) NOT NULL DEFAULT '0',
  `how_many_times_msg` text NOT NULL,
  `download_limit_after_this_time` int(4) NOT NULL DEFAULT '60',
  `transfer_speed_limit_kb` int(10) NOT NULL DEFAULT '0',
  `upload_limit_daily` int(10) NOT NULL DEFAULT '0',
  `upload_limit_daily_msg` text NOT NULL,
  `view_captcha` tinyint(1) NOT NULL DEFAULT '0',
  `view_inquiry_form` tinyint(1) NOT NULL DEFAULT '0',
  `view_report_form` tinyint(1) NOT NULL DEFAULT '0',
  `must_form_fill_out` tinyint(1) NOT NULL DEFAULT '0',
  `countdown_timer_duration` int(10) NOT NULL DEFAULT '0',
  `countdown_timer_msg` text NOT NULL,
  `may_edit_own_downloads` tinyint(1) NOT NULL DEFAULT '0',
  `may_edit_all_downloads` tinyint(1) NOT NULL DEFAULT '0',
  `use_private_area` tinyint(1) NOT NULL DEFAULT '0',
  `view_user_his_limits` tinyint(1) NOT NULL DEFAULT '0',
  `view_user_his_limits_msg` text NOT NULL,
  `uploads_only_in_cat_id` int(11) NOT NULL DEFAULT '0',
  `uploads_auto_publish` tinyint(1) NOT NULL DEFAULT '0',
  `uploads_allowed_types` text NOT NULL,
  `uploads_use_editor` tinyint(1) NOT NULL DEFAULT '1',
  `uploads_use_tabs` tinyint(1) NOT NULL DEFAULT '1',
  `uploads_allowed_preview_types` text NOT NULL,
  `uploads_maxfilesize_kb` char(15) NOT NULL DEFAULT '2048',
  `uploads_form_text` text NOT NULL,
  `uploads_max_amount_images` int(3) NOT NULL DEFAULT '3',
  `uploads_can_change_category` tinyint(1) NOT NULL DEFAULT '1',
  `uploads_default_access_level` int(10) NOT NULL DEFAULT '0',
  `uploads_view_upload_icon` tinyint(1) NOT NULL DEFAULT '1',
  `uploads_allow_custom_tags` tinyint(1) NOT NULL DEFAULT '1',
  `form_title` tinyint(1) NOT NULL DEFAULT '1',
  `form_alias` tinyint(1) NOT NULL DEFAULT '1',
  `form_alias_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_version` tinyint(1) NOT NULL DEFAULT '1',
  `form_version_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_access` tinyint(1) NOT NULL DEFAULT '0',
  `form_access_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_update_active` tinyint(1) NOT NULL DEFAULT '0',
  `form_file_language` tinyint(1) NOT NULL DEFAULT '1',
  `form_file_language_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_file_system` tinyint(1) NOT NULL DEFAULT '1',
  `form_file_system_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_license` tinyint(1) NOT NULL DEFAULT '1',
  `form_license_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_confirm_license` tinyint(1) NOT NULL DEFAULT '1',
  `form_short_desc` tinyint(1) NOT NULL DEFAULT '1',
  `form_short_desc_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_long_desc` tinyint(1) NOT NULL DEFAULT '1',
  `form_long_desc_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_changelog` tinyint(1) NOT NULL DEFAULT '1',
  `form_changelog_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_category` tinyint(1) NOT NULL DEFAULT '1',
  `form_view_access` tinyint(1) NOT NULL DEFAULT '0',
  `form_language` tinyint(1) NOT NULL DEFAULT '0',
  `form_language_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_published` tinyint(1) NOT NULL DEFAULT '0',
  `form_featured` tinyint(1) NOT NULL DEFAULT '0',
  `form_creation_date` tinyint(1) NOT NULL DEFAULT '1',
  `form_creation_date_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_modified_date` tinyint(1) NOT NULL DEFAULT '1',
  `form_timeframe` tinyint(1) NOT NULL DEFAULT '0',
  `form_views` tinyint(1) NOT NULL DEFAULT '0',
  `form_downloaded` tinyint(1) NOT NULL DEFAULT '0',
  `form_ordering` tinyint(1) NOT NULL DEFAULT '0',
  `form_password` tinyint(1) NOT NULL DEFAULT '0',
  `form_password_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_price` tinyint(1) NOT NULL DEFAULT '1',
  `form_price_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_website` tinyint(1) NOT NULL DEFAULT '1',
  `form_website_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_author_name` tinyint(1) NOT NULL DEFAULT '1',
  `form_author_name_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_author_mail` tinyint(1) NOT NULL DEFAULT '1',
  `form_author_mail_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_file_pic` tinyint(1) NOT NULL DEFAULT '1',
  `form_file_pic_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_select_main_file` tinyint(1) NOT NULL DEFAULT '1',
  `form_select_main_file_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_file_size` tinyint(1) NOT NULL DEFAULT '1',
  `form_file_date` tinyint(1) NOT NULL DEFAULT '1',
  `form_file_date_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_select_preview_file` tinyint(1) NOT NULL DEFAULT '1',
  `form_select_preview_file_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_external_file` tinyint(1) NOT NULL DEFAULT '1',
  `form_external_file_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_mirror_1` tinyint(1) NOT NULL DEFAULT '1',
  `form_mirror_1_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_mirror_2` tinyint(4) NOT NULL DEFAULT '1',
  `form_mirror_2_x` tinyint(4) NOT NULL DEFAULT '0',
  `form_images` tinyint(1) NOT NULL DEFAULT '1',
  `form_images_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_meta_desc` tinyint(1) NOT NULL DEFAULT '1',
  `form_meta_key` tinyint(1) NOT NULL DEFAULT '1',
  `form_robots` tinyint(1) NOT NULL DEFAULT '1',
  `form_tags` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_select_box_1` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_select_box_1_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_select_box_2` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_select_box_2_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_select_box_3` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_select_box_3_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_select_box_4` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_select_box_4_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_select_box_5` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_select_box_5_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_short_input_1` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_short_input_1_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_short_input_2` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_short_input_2_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_short_input_3` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_short_input_3_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_short_input_4` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_short_input_4_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_short_input_5` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_short_input_5_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_date_1` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_date_1_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_date_2` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_date_2_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_large_input_1` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_large_input_1_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_large_input_2` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_large_input_2_x` tinyint(1) NOT NULL DEFAULT '0',
  `notes` text NOT NULL,
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_checked_out` (`checked_out`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `c39g0_jdownloads_usergroups_limits`
--

INSERT INTO `c39g0_jdownloads_usergroups_limits` (`id`, `importance`, `group_id`, `download_limit_daily`, `download_limit_daily_msg`, `download_limit_weekly`, `download_limit_weekly_msg`, `download_limit_monthly`, `download_limit_monthly_msg`, `download_volume_limit_daily`, `download_volume_limit_daily_msg`, `download_volume_limit_weekly`, `download_volume_limit_weekly_msg`, `download_volume_limit_monthly`, `download_volume_limit_monthly_msg`, `how_many_times`, `how_many_times_msg`, `download_limit_after_this_time`, `transfer_speed_limit_kb`, `upload_limit_daily`, `upload_limit_daily_msg`, `view_captcha`, `view_inquiry_form`, `view_report_form`, `must_form_fill_out`, `countdown_timer_duration`, `countdown_timer_msg`, `may_edit_own_downloads`, `may_edit_all_downloads`, `use_private_area`, `view_user_his_limits`, `view_user_his_limits_msg`, `uploads_only_in_cat_id`, `uploads_auto_publish`, `uploads_allowed_types`, `uploads_use_editor`, `uploads_use_tabs`, `uploads_allowed_preview_types`, `uploads_maxfilesize_kb`, `uploads_form_text`, `uploads_max_amount_images`, `uploads_can_change_category`, `uploads_default_access_level`, `uploads_view_upload_icon`, `uploads_allow_custom_tags`, `form_title`, `form_alias`, `form_alias_x`, `form_version`, `form_version_x`, `form_access`, `form_access_x`, `form_update_active`, `form_file_language`, `form_file_language_x`, `form_file_system`, `form_file_system_x`, `form_license`, `form_license_x`, `form_confirm_license`, `form_short_desc`, `form_short_desc_x`, `form_long_desc`, `form_long_desc_x`, `form_changelog`, `form_changelog_x`, `form_category`, `form_view_access`, `form_language`, `form_language_x`, `form_published`, `form_featured`, `form_creation_date`, `form_creation_date_x`, `form_modified_date`, `form_timeframe`, `form_views`, `form_downloaded`, `form_ordering`, `form_password`, `form_password_x`, `form_price`, `form_price_x`, `form_website`, `form_website_x`, `form_author_name`, `form_author_name_x`, `form_author_mail`, `form_author_mail_x`, `form_file_pic`, `form_file_pic_x`, `form_select_main_file`, `form_select_main_file_x`, `form_file_size`, `form_file_date`, `form_file_date_x`, `form_select_preview_file`, `form_select_preview_file_x`, `form_external_file`, `form_external_file_x`, `form_mirror_1`, `form_mirror_1_x`, `form_mirror_2`, `form_mirror_2_x`, `form_images`, `form_images_x`, `form_meta_desc`, `form_meta_key`, `form_robots`, `form_tags`, `form_extra_select_box_1`, `form_extra_select_box_1_x`, `form_extra_select_box_2`, `form_extra_select_box_2_x`, `form_extra_select_box_3`, `form_extra_select_box_3_x`, `form_extra_select_box_4`, `form_extra_select_box_4_x`, `form_extra_select_box_5`, `form_extra_select_box_5_x`, `form_extra_short_input_1`, `form_extra_short_input_1_x`, `form_extra_short_input_2`, `form_extra_short_input_2_x`, `form_extra_short_input_3`, `form_extra_short_input_3_x`, `form_extra_short_input_4`, `form_extra_short_input_4_x`, `form_extra_short_input_5`, `form_extra_short_input_5_x`, `form_extra_date_1`, `form_extra_date_1_x`, `form_extra_date_2`, `form_extra_date_2_x`, `form_extra_large_input_1`, `form_extra_large_input_1_x`, `form_extra_large_input_2`, `form_extra_large_input_2_x`, `notes`, `checked_out`, `checked_out_time`) VALUES
(1, 1, 1, 0, '{en-GB}You have reached your daily limit for the allowed number of Downloads.<br />You can can resume downloading tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have reached your weekly limit for the maximum permitted number of Downloads.<br />You can download more next week.{/en-GB}', 0, '{en-GB}You have reached your monthly limit for the maximum permitted number of downloads.<br />You can download more next month.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total daily download size.<br />You can download more tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total weekly download size.<br />You can resume downloading next week.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total monthly download size.<br />You can resume downloading next month.{/en-GB}', 0, '{en-GB}One or more of your selected files exceeds your Download limit for the number of times it may be downloaded.<br />Please note that you can download every file only %s times.{/en-GB}', 60, 0, 0, '{en-GB}You can only upload %s files each day. You have reached the limit for today.{/en-GB}', 0, 0, 0, 0, 0, '{en-GB}Please wait. You can download the file in %s seconds.<br /><br />Please note that you can only download the file immediately when you are a registered member.{/en-GB}', 0, 0, 0, 0, '<div class="jd_user_limits">{msg_title}<ul>  <li>{files_daily_label} {files_daily_value} {remaining_label} {files_daily_rest_value}</li>  <li>{files_weekly_label} {files_weekly_value} {remaining_label} {files_weekly_rest_value}</li>  <li>{files_monthly_label} {files_monthly_value} {remaining_label} {files_monthly_rest_value}</li>   <li>{volume_daily_label} {volume_daily_value} {remaining_label} {volume_daily_rest_value}</li>   <li>{volume_weekly_label} {volume_weekly_value} {remaining_label} {volume_weekly_rest_value}</li>   <li>{volume_monthly_label} {volume_monthly_value} {remaining_label} {volume_monthly_rest_value}</li>    <li>{upload_daily_label} {upload_daily_value} {remaining_label} {upload_daily_rest_value}</li> </ul></div>', 0, 0, 'zip,rar,pdf,txt', 1, 1, 'mp3,mp4', '5120', '', 3, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '0000-00-00 00:00:00'),
(2, 1, 1, 0, '{en-GB}You have reached your daily limit for the allowed number of Downloads.<br />You can can resume downloading tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have reached your weekly limit for the maximum permitted number of Downloads.<br />You can download more next week.{/en-GB}', 0, '{en-GB}You have reached your monthly limit for the maximum permitted number of downloads.<br />You can download more next month.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total daily download size.<br />You can download more tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total weekly download size.<br />You can resume downloading next week.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total monthly download size.<br />You can resume downloading next month.{/en-GB}', 0, '{en-GB}One or more of your selected files exceeds your Download limit for the number of times it may be downloaded.<br />Please note that you can download every file only %s times.{/en-GB}', 60, 0, 0, '{en-GB}You can only upload %s files each day. You have reached the limit for today.{/en-GB}', 0, 0, 0, 0, 0, '{en-GB}Please wait. You can download the file in %s seconds.<br /><br />Please note that you can only download the file immediately when you are a registered member.{/en-GB}', 0, 0, 0, 0, '<div class="jd_user_limits">{msg_title}<ul>  <li>{files_daily_label} {files_daily_value} {remaining_label} {files_daily_rest_value}</li>  <li>{files_weekly_label} {files_weekly_value} {remaining_label} {files_weekly_rest_value}</li>  <li>{files_monthly_label} {files_monthly_value} {remaining_label} {files_monthly_rest_value}</li>   <li>{volume_daily_label} {volume_daily_value} {remaining_label} {volume_daily_rest_value}</li>   <li>{volume_weekly_label} {volume_weekly_value} {remaining_label} {volume_weekly_rest_value}</li>   <li>{volume_monthly_label} {volume_monthly_value} {remaining_label} {volume_monthly_rest_value}</li>    <li>{upload_daily_label} {upload_daily_value} {remaining_label} {upload_daily_rest_value}</li> </ul></div>', 0, 0, 'zip,rar,pdf,txt', 1, 1, 'mp3,mp4', '5120', '', 3, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '0000-00-00 00:00:00'),
(3, 20, 2, 0, '{en-GB}You have reached your daily limit for the allowed number of Downloads.<br />You can can resume downloading tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have reached your weekly limit for the maximum permitted number of Downloads.<br />You can download more next week.{/en-GB}', 0, '{en-GB}You have reached your monthly limit for the maximum permitted number of downloads.<br />You can download more next month.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total daily download size.<br />You can download more tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total weekly download size.<br />You can resume downloading next week.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total monthly download size.<br />You can resume downloading next month.{/en-GB}', 0, '{en-GB}One or more of your selected files exceeds your Download limit for the number of times it may be downloaded.<br />Please note that you can download every file only %s times.{/en-GB}', 60, 0, 0, '{en-GB}You can only upload %s files each day. You have reached the limit for today.{/en-GB}', 0, 0, 0, 0, 0, '{en-GB}Please wait. You can download the file in %s seconds.<br /><br />Please note that you can only download the file immediately when you are a registered member.{/en-GB}', 0, 0, 0, 0, '<div class="jd_user_limits">{msg_title}<ul>  <li>{files_daily_label} {files_daily_value} {remaining_label} {files_daily_rest_value}</li>  <li>{files_weekly_label} {files_weekly_value} {remaining_label} {files_weekly_rest_value}</li>  <li>{files_monthly_label} {files_monthly_value} {remaining_label} {files_monthly_rest_value}</li>   <li>{volume_daily_label} {volume_daily_value} {remaining_label} {volume_daily_rest_value}</li>   <li>{volume_weekly_label} {volume_weekly_value} {remaining_label} {volume_weekly_rest_value}</li>   <li>{volume_monthly_label} {volume_monthly_value} {remaining_label} {volume_monthly_rest_value}</li>    <li>{upload_daily_label} {upload_daily_value} {remaining_label} {upload_daily_rest_value}</li> </ul></div>', 0, 0, 'zip,rar,pdf,txt', 1, 1, 'mp3,mp4', '5120', '', 3, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '0000-00-00 00:00:00'),
(4, 20, 2, 0, '{en-GB}You have reached your daily limit for the allowed number of Downloads.<br />You can can resume downloading tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have reached your weekly limit for the maximum permitted number of Downloads.<br />You can download more next week.{/en-GB}', 0, '{en-GB}You have reached your monthly limit for the maximum permitted number of downloads.<br />You can download more next month.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total daily download size.<br />You can download more tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total weekly download size.<br />You can resume downloading next week.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total monthly download size.<br />You can resume downloading next month.{/en-GB}', 0, '{en-GB}One or more of your selected files exceeds your Download limit for the number of times it may be downloaded.<br />Please note that you can download every file only %s times.{/en-GB}', 60, 0, 0, '{en-GB}You can only upload %s files each day. You have reached the limit for today.{/en-GB}', 0, 0, 0, 0, 0, '{en-GB}Please wait. You can download the file in %s seconds.<br /><br />Please note that you can only download the file immediately when you are a registered member.{/en-GB}', 0, 0, 0, 0, '<div class="jd_user_limits">{msg_title}<ul>  <li>{files_daily_label} {files_daily_value} {remaining_label} {files_daily_rest_value}</li>  <li>{files_weekly_label} {files_weekly_value} {remaining_label} {files_weekly_rest_value}</li>  <li>{files_monthly_label} {files_monthly_value} {remaining_label} {files_monthly_rest_value}</li>   <li>{volume_daily_label} {volume_daily_value} {remaining_label} {volume_daily_rest_value}</li>   <li>{volume_weekly_label} {volume_weekly_value} {remaining_label} {volume_weekly_rest_value}</li>   <li>{volume_monthly_label} {volume_monthly_value} {remaining_label} {volume_monthly_rest_value}</li>    <li>{upload_daily_label} {upload_daily_value} {remaining_label} {upload_daily_rest_value}</li> </ul></div>', 0, 0, 'zip,rar,pdf,txt', 1, 1, 'mp3,mp4', '5120', '', 3, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '0000-00-00 00:00:00'),
(5, 30, 3, 0, '{en-GB}You have reached your daily limit for the allowed number of Downloads.<br />You can can resume downloading tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have reached your weekly limit for the maximum permitted number of Downloads.<br />You can download more next week.{/en-GB}', 0, '{en-GB}You have reached your monthly limit for the maximum permitted number of downloads.<br />You can download more next month.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total daily download size.<br />You can download more tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total weekly download size.<br />You can resume downloading next week.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total monthly download size.<br />You can resume downloading next month.{/en-GB}', 0, '{en-GB}One or more of your selected files exceeds your Download limit for the number of times it may be downloaded.<br />Please note that you can download every file only %s times.{/en-GB}', 60, 0, 0, '{en-GB}You can only upload %s files each day. You have reached the limit for today.{/en-GB}', 0, 0, 0, 0, 0, '{en-GB}Please wait. You can download the file in %s seconds.<br /><br />Please note that you can only download the file immediately when you are a registered member.{/en-GB}', 0, 0, 0, 0, '<div class="jd_user_limits">{msg_title}<ul>  <li>{files_daily_label} {files_daily_value} {remaining_label} {files_daily_rest_value}</li>  <li>{files_weekly_label} {files_weekly_value} {remaining_label} {files_weekly_rest_value}</li>  <li>{files_monthly_label} {files_monthly_value} {remaining_label} {files_monthly_rest_value}</li>   <li>{volume_daily_label} {volume_daily_value} {remaining_label} {volume_daily_rest_value}</li>   <li>{volume_weekly_label} {volume_weekly_value} {remaining_label} {volume_weekly_rest_value}</li>   <li>{volume_monthly_label} {volume_monthly_value} {remaining_label} {volume_monthly_rest_value}</li>    <li>{upload_daily_label} {upload_daily_value} {remaining_label} {upload_daily_rest_value}</li> </ul></div>', 0, 0, 'zip,rar,pdf,txt', 1, 1, 'mp3,mp4', '5120', '', 3, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '0000-00-00 00:00:00'),
(6, 30, 3, 0, '{en-GB}You have reached your daily limit for the allowed number of Downloads.<br />You can can resume downloading tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have reached your weekly limit for the maximum permitted number of Downloads.<br />You can download more next week.{/en-GB}', 0, '{en-GB}You have reached your monthly limit for the maximum permitted number of downloads.<br />You can download more next month.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total daily download size.<br />You can download more tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total weekly download size.<br />You can resume downloading next week.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total monthly download size.<br />You can resume downloading next month.{/en-GB}', 0, '{en-GB}One or more of your selected files exceeds your Download limit for the number of times it may be downloaded.<br />Please note that you can download every file only %s times.{/en-GB}', 60, 0, 0, '{en-GB}You can only upload %s files each day. You have reached the limit for today.{/en-GB}', 0, 0, 0, 0, 0, '{en-GB}Please wait. You can download the file in %s seconds.<br /><br />Please note that you can only download the file immediately when you are a registered member.{/en-GB}', 0, 0, 0, 0, '<div class="jd_user_limits">{msg_title}<ul>  <li>{files_daily_label} {files_daily_value} {remaining_label} {files_daily_rest_value}</li>  <li>{files_weekly_label} {files_weekly_value} {remaining_label} {files_weekly_rest_value}</li>  <li>{files_monthly_label} {files_monthly_value} {remaining_label} {files_monthly_rest_value}</li>   <li>{volume_daily_label} {volume_daily_value} {remaining_label} {volume_daily_rest_value}</li>   <li>{volume_weekly_label} {volume_weekly_value} {remaining_label} {volume_weekly_rest_value}</li>   <li>{volume_monthly_label} {volume_monthly_value} {remaining_label} {volume_monthly_rest_value}</li>    <li>{upload_daily_label} {upload_daily_value} {remaining_label} {upload_daily_rest_value}</li> </ul></div>', 0, 0, 'zip,rar,pdf,txt', 1, 1, 'mp3,mp4', '5120', '', 3, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '0000-00-00 00:00:00'),
(7, 40, 4, 0, '{en-GB}You have reached your daily limit for the allowed number of Downloads.<br />You can can resume downloading tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have reached your weekly limit for the maximum permitted number of Downloads.<br />You can download more next week.{/en-GB}', 0, '{en-GB}You have reached your monthly limit for the maximum permitted number of downloads.<br />You can download more next month.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total daily download size.<br />You can download more tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total weekly download size.<br />You can resume downloading next week.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total monthly download size.<br />You can resume downloading next month.{/en-GB}', 0, '{en-GB}One or more of your selected files exceeds your Download limit for the number of times it may be downloaded.<br />Please note that you can download every file only %s times.{/en-GB}', 60, 0, 0, '{en-GB}You can only upload %s files each day. You have reached the limit for today.{/en-GB}', 0, 0, 0, 0, 0, '{en-GB}Please wait. You can download the file in %s seconds.<br /><br />Please note that you can only download the file immediately when you are a registered member.{/en-GB}', 0, 0, 0, 0, '<div class="jd_user_limits">{msg_title}<ul>  <li>{files_daily_label} {files_daily_value} {remaining_label} {files_daily_rest_value}</li>  <li>{files_weekly_label} {files_weekly_value} {remaining_label} {files_weekly_rest_value}</li>  <li>{files_monthly_label} {files_monthly_value} {remaining_label} {files_monthly_rest_value}</li>   <li>{volume_daily_label} {volume_daily_value} {remaining_label} {volume_daily_rest_value}</li>   <li>{volume_weekly_label} {volume_weekly_value} {remaining_label} {volume_weekly_rest_value}</li>   <li>{volume_monthly_label} {volume_monthly_value} {remaining_label} {volume_monthly_rest_value}</li>    <li>{upload_daily_label} {upload_daily_value} {remaining_label} {upload_daily_rest_value}</li> </ul></div>', 0, 0, 'zip,rar,pdf,txt', 1, 1, 'mp3,mp4', '5120', '', 3, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '0000-00-00 00:00:00'),
(8, 40, 4, 0, '{en-GB}You have reached your daily limit for the allowed number of Downloads.<br />You can can resume downloading tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have reached your weekly limit for the maximum permitted number of Downloads.<br />You can download more next week.{/en-GB}', 0, '{en-GB}You have reached your monthly limit for the maximum permitted number of downloads.<br />You can download more next month.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total daily download size.<br />You can download more tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total weekly download size.<br />You can resume downloading next week.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total monthly download size.<br />You can resume downloading next month.{/en-GB}', 0, '{en-GB}One or more of your selected files exceeds your Download limit for the number of times it may be downloaded.<br />Please note that you can download every file only %s times.{/en-GB}', 60, 0, 0, '{en-GB}You can only upload %s files each day. You have reached the limit for today.{/en-GB}', 0, 0, 0, 0, 0, '{en-GB}Please wait. You can download the file in %s seconds.<br /><br />Please note that you can only download the file immediately when you are a registered member.{/en-GB}', 0, 0, 0, 0, '<div class="jd_user_limits">{msg_title}<ul>  <li>{files_daily_label} {files_daily_value} {remaining_label} {files_daily_rest_value}</li>  <li>{files_weekly_label} {files_weekly_value} {remaining_label} {files_weekly_rest_value}</li>  <li>{files_monthly_label} {files_monthly_value} {remaining_label} {files_monthly_rest_value}</li>   <li>{volume_daily_label} {volume_daily_value} {remaining_label} {volume_daily_rest_value}</li>   <li>{volume_weekly_label} {volume_weekly_value} {remaining_label} {volume_weekly_rest_value}</li>   <li>{volume_monthly_label} {volume_monthly_value} {remaining_label} {volume_monthly_rest_value}</li>    <li>{upload_daily_label} {upload_daily_value} {remaining_label} {upload_daily_rest_value}</li> </ul></div>', 0, 0, 'zip,rar,pdf,txt', 1, 1, 'mp3,mp4', '5120', '', 3, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '0000-00-00 00:00:00'),
(9, 50, 5, 0, '{en-GB}You have reached your daily limit for the allowed number of Downloads.<br />You can can resume downloading tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have reached your weekly limit for the maximum permitted number of Downloads.<br />You can download more next week.{/en-GB}', 0, '{en-GB}You have reached your monthly limit for the maximum permitted number of downloads.<br />You can download more next month.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total daily download size.<br />You can download more tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total weekly download size.<br />You can resume downloading next week.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total monthly download size.<br />You can resume downloading next month.{/en-GB}', 0, '{en-GB}One or more of your selected files exceeds your Download limit for the number of times it may be downloaded.<br />Please note that you can download every file only %s times.{/en-GB}', 60, 0, 0, '{en-GB}You can only upload %s files each day. You have reached the limit for today.{/en-GB}', 0, 0, 0, 0, 0, '{en-GB}Please wait. You can download the file in %s seconds.<br /><br />Please note that you can only download the file immediately when you are a registered member.{/en-GB}', 0, 0, 0, 0, '<div class="jd_user_limits">{msg_title}<ul>  <li>{files_daily_label} {files_daily_value} {remaining_label} {files_daily_rest_value}</li>  <li>{files_weekly_label} {files_weekly_value} {remaining_label} {files_weekly_rest_value}</li>  <li>{files_monthly_label} {files_monthly_value} {remaining_label} {files_monthly_rest_value}</li>   <li>{volume_daily_label} {volume_daily_value} {remaining_label} {volume_daily_rest_value}</li>   <li>{volume_weekly_label} {volume_weekly_value} {remaining_label} {volume_weekly_rest_value}</li>   <li>{volume_monthly_label} {volume_monthly_value} {remaining_label} {volume_monthly_rest_value}</li>    <li>{upload_daily_label} {upload_daily_value} {remaining_label} {upload_daily_rest_value}</li> </ul></div>', 0, 0, 'zip,rar,pdf,txt', 1, 1, 'mp3,mp4', '5120', '', 3, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '0000-00-00 00:00:00'),
(10, 50, 5, 0, '{en-GB}You have reached your daily limit for the allowed number of Downloads.<br />You can can resume downloading tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have reached your weekly limit for the maximum permitted number of Downloads.<br />You can download more next week.{/en-GB}', 0, '{en-GB}You have reached your monthly limit for the maximum permitted number of downloads.<br />You can download more next month.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total daily download size.<br />You can download more tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total weekly download size.<br />You can resume downloading next week.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total monthly download size.<br />You can resume downloading next month.{/en-GB}', 0, '{en-GB}One or more of your selected files exceeds your Download limit for the number of times it may be downloaded.<br />Please note that you can download every file only %s times.{/en-GB}', 60, 0, 0, '{en-GB}You can only upload %s files each day. You have reached the limit for today.{/en-GB}', 0, 0, 0, 0, 0, '{en-GB}Please wait. You can download the file in %s seconds.<br /><br />Please note that you can only download the file immediately when you are a registered member.{/en-GB}', 0, 0, 0, 0, '<div class="jd_user_limits">{msg_title}<ul>  <li>{files_daily_label} {files_daily_value} {remaining_label} {files_daily_rest_value}</li>  <li>{files_weekly_label} {files_weekly_value} {remaining_label} {files_weekly_rest_value}</li>  <li>{files_monthly_label} {files_monthly_value} {remaining_label} {files_monthly_rest_value}</li>   <li>{volume_daily_label} {volume_daily_value} {remaining_label} {volume_daily_rest_value}</li>   <li>{volume_weekly_label} {volume_weekly_value} {remaining_label} {volume_weekly_rest_value}</li>   <li>{volume_monthly_label} {volume_monthly_value} {remaining_label} {volume_monthly_rest_value}</li>    <li>{upload_daily_label} {upload_daily_value} {remaining_label} {upload_daily_rest_value}</li> </ul></div>', 0, 0, 'zip,rar,pdf,txt', 1, 1, 'mp3,mp4', '5120', '', 3, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '0000-00-00 00:00:00'),
(11, 60, 6, 0, '{en-GB}You have reached your daily limit for the allowed number of Downloads.<br />You can can resume downloading tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have reached your weekly limit for the maximum permitted number of Downloads.<br />You can download more next week.{/en-GB}', 0, '{en-GB}You have reached your monthly limit for the maximum permitted number of downloads.<br />You can download more next month.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total daily download size.<br />You can download more tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total weekly download size.<br />You can resume downloading next week.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total monthly download size.<br />You can resume downloading next month.{/en-GB}', 0, '{en-GB}One or more of your selected files exceeds your Download limit for the number of times it may be downloaded.<br />Please note that you can download every file only %s times.{/en-GB}', 60, 0, 0, '{en-GB}You can only upload %s files each day. You have reached the limit for today.{/en-GB}', 0, 0, 0, 0, 0, '{en-GB}Please wait. You can download the file in %s seconds.<br /><br />Please note that you can only download the file immediately when you are a registered member.{/en-GB}', 0, 0, 0, 0, '<div class="jd_user_limits">{msg_title}<ul>  <li>{files_daily_label} {files_daily_value} {remaining_label} {files_daily_rest_value}</li>  <li>{files_weekly_label} {files_weekly_value} {remaining_label} {files_weekly_rest_value}</li>  <li>{files_monthly_label} {files_monthly_value} {remaining_label} {files_monthly_rest_value}</li>   <li>{volume_daily_label} {volume_daily_value} {remaining_label} {volume_daily_rest_value}</li>   <li>{volume_weekly_label} {volume_weekly_value} {remaining_label} {volume_weekly_rest_value}</li>   <li>{volume_monthly_label} {volume_monthly_value} {remaining_label} {volume_monthly_rest_value}</li>    <li>{upload_daily_label} {upload_daily_value} {remaining_label} {upload_daily_rest_value}</li> </ul></div>', 0, 0, 'zip,rar,pdf,txt', 1, 1, 'mp3,mp4', '5120', '', 3, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '0000-00-00 00:00:00'),
(12, 70, 7, 0, '{en-GB}You have reached your daily limit for the allowed number of Downloads.<br />You can can resume downloading tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have reached your weekly limit for the maximum permitted number of Downloads.<br />You can download more next week.{/en-GB}', 0, '{en-GB}You have reached your monthly limit for the maximum permitted number of downloads.<br />You can download more next month.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total daily download size.<br />You can download more tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total weekly download size.<br />You can resume downloading next week.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total monthly download size.<br />You can resume downloading next month.{/en-GB}', 0, '{en-GB}One or more of your selected files exceeds your Download limit for the number of times it may be downloaded.<br />Please note that you can download every file only %s times.{/en-GB}', 60, 0, 0, '{en-GB}You can only upload %s files each day. You have reached the limit for today.{/en-GB}', 0, 0, 0, 0, 0, '{en-GB}Please wait. You can download the file in %s seconds.<br /><br />Please note that you can only download the file immediately when you are a registered member.{/en-GB}', 0, 0, 0, 0, '<div class="jd_user_limits">{msg_title}<ul>  <li>{files_daily_label} {files_daily_value} {remaining_label} {files_daily_rest_value}</li>  <li>{files_weekly_label} {files_weekly_value} {remaining_label} {files_weekly_rest_value}</li>  <li>{files_monthly_label} {files_monthly_value} {remaining_label} {files_monthly_rest_value}</li>   <li>{volume_daily_label} {volume_daily_value} {remaining_label} {volume_daily_rest_value}</li>   <li>{volume_weekly_label} {volume_weekly_value} {remaining_label} {volume_weekly_rest_value}</li>   <li>{volume_monthly_label} {volume_monthly_value} {remaining_label} {volume_monthly_rest_value}</li>    <li>{upload_daily_label} {upload_daily_value} {remaining_label} {upload_daily_rest_value}</li> </ul></div>', 0, 0, 'zip,rar,pdf,txt', 1, 1, 'mp3,mp4', '5120', '', 3, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '0000-00-00 00:00:00'),
(13, 70, 7, 0, '{en-GB}You have reached your daily limit for the allowed number of Downloads.<br />You can can resume downloading tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have reached your weekly limit for the maximum permitted number of Downloads.<br />You can download more next week.{/en-GB}', 0, '{en-GB}You have reached your monthly limit for the maximum permitted number of downloads.<br />You can download more next month.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total daily download size.<br />You can download more tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total weekly download size.<br />You can resume downloading next week.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total monthly download size.<br />You can resume downloading next month.{/en-GB}', 0, '{en-GB}One or more of your selected files exceeds your Download limit for the number of times it may be downloaded.<br />Please note that you can download every file only %s times.{/en-GB}', 60, 0, 0, '{en-GB}You can only upload %s files each day. You have reached the limit for today.{/en-GB}', 0, 0, 0, 0, 0, '{en-GB}Please wait. You can download the file in %s seconds.<br /><br />Please note that you can only download the file immediately when you are a registered member.{/en-GB}', 0, 0, 0, 0, '<div class="jd_user_limits">{msg_title}<ul>  <li>{files_daily_label} {files_daily_value} {remaining_label} {files_daily_rest_value}</li>  <li>{files_weekly_label} {files_weekly_value} {remaining_label} {files_weekly_rest_value}</li>  <li>{files_monthly_label} {files_monthly_value} {remaining_label} {files_monthly_rest_value}</li>   <li>{volume_daily_label} {volume_daily_value} {remaining_label} {volume_daily_rest_value}</li>   <li>{volume_weekly_label} {volume_weekly_value} {remaining_label} {volume_weekly_rest_value}</li>   <li>{volume_monthly_label} {volume_monthly_value} {remaining_label} {volume_monthly_rest_value}</li>    <li>{upload_daily_label} {upload_daily_value} {remaining_label} {upload_daily_rest_value}</li> </ul></div>', 0, 0, 'zip,rar,pdf,txt', 1, 1, 'mp3,mp4', '5120', '', 3, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '0000-00-00 00:00:00'),
(14, 100, 8, 0, '{en-GB}You have reached your daily limit for the allowed number of Downloads.<br />You can can resume downloading tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have reached your weekly limit for the maximum permitted number of Downloads.<br />You can download more next week.{/en-GB}', 0, '{en-GB}You have reached your monthly limit for the maximum permitted number of downloads.<br />You can download more next month.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total daily download size.<br />You can download more tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total weekly download size.<br />You can resume downloading next week.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total monthly download size.<br />You can resume downloading next month.{/en-GB}', 0, '{en-GB}One or more of your selected files exceeds your Download limit for the number of times it may be downloaded.<br />Please note that you can download every file only %s times.{/en-GB}', 60, 0, 0, '{en-GB}You can only upload %s files each day. You have reached the limit for today.{/en-GB}', 0, 0, 0, 0, 0, '{en-GB}Please wait. You can download the file in %s seconds.<br /><br />Please note that you can only download the file immediately when you are a registered member.{/en-GB}', 0, 0, 0, 0, '<div class="jd_user_limits">{msg_title}<ul>  <li>{files_daily_label} {files_daily_value} {remaining_label} {files_daily_rest_value}</li>  <li>{files_weekly_label} {files_weekly_value} {remaining_label} {files_weekly_rest_value}</li>  <li>{files_monthly_label} {files_monthly_value} {remaining_label} {files_monthly_rest_value}</li>   <li>{volume_daily_label} {volume_daily_value} {remaining_label} {volume_daily_rest_value}</li>   <li>{volume_weekly_label} {volume_weekly_value} {remaining_label} {volume_weekly_rest_value}</li>   <li>{volume_monthly_label} {volume_monthly_value} {remaining_label} {volume_monthly_rest_value}</li>    <li>{upload_daily_label} {upload_daily_value} {remaining_label} {upload_daily_rest_value}</li> </ul></div>', 0, 1, 'zip,rar,pdf,txt,doc,gif,png,jpg', 1, 1, 'mp3,mp4', '32768', '', 10, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '0000-00-00 00:00:00'),
(15, 0, 9, 0, '{en-GB}You have reached your daily limit for the allowed number of Downloads.<br />You can can resume downloading tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have reached your weekly limit for the maximum permitted number of Downloads.<br />You can download more next week.{/en-GB}', 0, '{en-GB}You have reached your monthly limit for the maximum permitted number of downloads.<br />You can download more next month.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total daily download size.<br />You can download more tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total weekly download size.<br />You can resume downloading next week.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total monthly download size.<br />You can resume downloading next month.{/en-GB}', 0, '{en-GB}One or more of your selected files exceeds your Download limit for the number of times it may be downloaded.<br />Please note that you can download every file only %s times.{/en-GB}', 60, 0, 0, '{en-GB}You can only upload %s files each day. You have reached the limit for today.{/en-GB}', 0, 0, 0, 0, 0, '{en-GB}Please wait. You can download the file in %s seconds.<br /><br />Please note that you can only download the file immediately when you are a registered member.{/en-GB}', 0, 0, 0, 0, '<div class="jd_user_limits">{msg_title}<ul>  <li>{files_daily_label} {files_daily_value} {remaining_label} {files_daily_rest_value}</li>  <li>{files_weekly_label} {files_weekly_value} {remaining_label} {files_weekly_rest_value}</li>  <li>{files_monthly_label} {files_monthly_value} {remaining_label} {files_monthly_rest_value}</li>   <li>{volume_daily_label} {volume_daily_value} {remaining_label} {volume_daily_rest_value}</li>   <li>{volume_weekly_label} {volume_weekly_value} {remaining_label} {volume_weekly_rest_value}</li>   <li>{volume_monthly_label} {volume_monthly_value} {remaining_label} {volume_monthly_rest_value}</li>    <li>{upload_daily_label} {upload_daily_value} {remaining_label} {upload_daily_rest_value}</li> </ul></div>', 0, 0, 'zip,rar,pdf,txt', 1, 1, 'mp3,mp4', '5120', '', 3, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '0000-00-00 00:00:00'),
(16, 0, 9, 0, '{en-GB}You have reached your daily limit for the allowed number of Downloads.<br />You can can resume downloading tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have reached your weekly limit for the maximum permitted number of Downloads.<br />You can download more next week.{/en-GB}', 0, '{en-GB}You have reached your monthly limit for the maximum permitted number of downloads.<br />You can download more next month.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total daily download size.<br />You can download more tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total weekly download size.<br />You can resume downloading next week.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total monthly download size.<br />You can resume downloading next month.{/en-GB}', 0, '{en-GB}One or more of your selected files exceeds your Download limit for the number of times it may be downloaded.<br />Please note that you can download every file only %s times.{/en-GB}', 60, 0, 0, '{en-GB}You can only upload %s files each day. You have reached the limit for today.{/en-GB}', 0, 0, 0, 0, 0, '{en-GB}Please wait. You can download the file in %s seconds.<br /><br />Please note that you can only download the file immediately when you are a registered member.{/en-GB}', 0, 0, 0, 0, '<div class="jd_user_limits">{msg_title}<ul>  <li>{files_daily_label} {files_daily_value} {remaining_label} {files_daily_rest_value}</li>  <li>{files_weekly_label} {files_weekly_value} {remaining_label} {files_weekly_rest_value}</li>  <li>{files_monthly_label} {files_monthly_value} {remaining_label} {files_monthly_rest_value}</li>   <li>{volume_daily_label} {volume_daily_value} {remaining_label} {volume_daily_rest_value}</li>   <li>{volume_weekly_label} {volume_weekly_value} {remaining_label} {volume_weekly_rest_value}</li>   <li>{volume_monthly_label} {volume_monthly_value} {remaining_label} {volume_monthly_rest_value}</li>    <li>{upload_daily_label} {upload_daily_value} {remaining_label} {upload_daily_rest_value}</li> </ul></div>', 0, 0, 'zip,rar,pdf,txt', 1, 1, 'mp3,mp4', '5120', '', 3, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_languages`
--

CREATE TABLE IF NOT EXISTS `c39g0_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `c39g0_languages`
--

INSERT INTO `c39g0_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_menu`
--

CREATE TABLE IF NOT EXISTS `c39g0_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=124 ;

--
-- Dumping data for table `c39g0_menu`
--

INSERT INTO `c39g0_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 87, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 29, 30, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 31, 32, 0, '*', 1),
(18, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 33, 34, 0, '*', 1),
(19, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 35, 36, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 37, 38, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 39, 40, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=article&id=11', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_tags":"0","show_noauth":"0","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Department of National Planning","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 41, 42, 1, '*', 0),
(103, 'mainmenu', 'Publications', 'publications', '', 'publications', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_tags":"0","show_noauth":"0","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 45, 46, 0, '*', 0),
(104, 'mainmenu', 'Contact', 'contact', '', 'contact', 'index.php?option=com_content&view=article&id=2', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_tags":"0","show_noauth":"0","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 47, 48, 0, '*', 0),
(105, 'mainmenu', 'Sector Policies', 'sector-policies', '', 'sector-policies', 'index.php?option=com_content&view=article&id=3', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_tags":"0","show_noauth":"0","urls_position":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 49, 50, 0, '*', 0),
(106, 'mainmenu', 'Links', 'links', '', 'links', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 51, 54, 0, '*', 0),
(107, 'mainmenu', 'Circulars', 'circulars', '', 'circulars', 'index.php?option=com_content&view=article&id=5', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_tags":"0","show_noauth":"0","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 55, 56, 0, '*', 0),
(108, 'mainmenu', 'Description of Photo Gallery', 'description-of-photo-gallery', '', 'description-of-photo-gallery', 'index.php?option=com_content&view=article&id=6', 'component', 0, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"0","show_intro":"0","info_block_position":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_tags":"0","show_noauth":"0","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 57, 58, 0, '*', 0),
(109, 'mainmenu', 'Project Submission Format', 'project-submission-format', '', 'project-submission-format', 'index.php?option=com_content&view=article&id=7', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_tags":"0","show_noauth":"0","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 59, 60, 0, '*', 0),
(110, 'header', 'Ministry of National Policies and Economic Affairs ', '2015-12-22-06-12-23', '', '2015-12-22-06-12-23', 'http://www.treasury.gov.lk/', 'url', 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 61, 62, 0, '*', 0),
(111, 'main', 'COM_JDOWNLOADS', 'com-jdownloads', '', 'com-jdownloads', 'index.php?option=com_jdownloads', 'component', 0, 1, 1, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jdownloads/assets/images/m_jdownloads.gif', 0, '{}', 63, 86, 0, '', 1),
(112, 'main', 'COM_JDOWNLOADS_CONTROL_PANEL', 'com-jdownloads-control-panel', '', 'com-jdownloads/com-jdownloads-control-panel', 'index.php?option=com_jdownloads', 'component', 0, 111, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jdownloads/assets/images/m_jdownloads.gif', 0, '{}', 64, 65, 0, '', 1),
(113, 'main', 'COM_JDOWNLOADS_CATEGORIES', 'com-jdownloads-categories', '', 'com-jdownloads/com-jdownloads-categories', 'index.php?option=com_jdownloads&view=categories', 'component', 0, 111, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jdownloads/assets/images/m_categories.gif', 0, '{}', 66, 67, 0, '', 1),
(114, 'main', 'COM_JDOWNLOADS_DOWNLOADS', 'com-jdownloads-downloads', '', 'com-jdownloads/com-jdownloads-downloads', 'index.php?option=com_jdownloads&view=downloads', 'component', 0, 111, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jdownloads/assets/images/m_downloads.gif', 0, '{}', 68, 69, 0, '', 1),
(115, 'main', 'COM_JDOWNLOADS_FILES', 'com-jdownloads-files', '', 'com-jdownloads/com-jdownloads-files', 'index.php?option=com_jdownloads&view=files', 'component', 0, 111, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jdownloads/assets/images/m_files.gif', 0, '{}', 70, 71, 0, '', 1),
(116, 'main', 'COM_JDOWNLOADS_LICENSES', 'com-jdownloads-licenses', '', 'com-jdownloads/com-jdownloads-licenses', 'index.php?option=com_jdownloads&view=licenses', 'component', 0, 111, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jdownloads/assets/images/m_licenses.gif', 0, '{}', 72, 73, 0, '', 1),
(117, 'main', 'COM_JDOWNLOADS_LAYOUTS', 'com-jdownloads-layouts', '', 'com-jdownloads/com-jdownloads-layouts', 'index.php?option=com_jdownloads&view=layouts', 'component', 0, 111, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jdownloads/assets/images/m_templates.gif', 0, '{}', 74, 75, 0, '', 1),
(118, 'main', 'COM_JDOWNLOADS_LOGS', 'com-jdownloads-logs', '', 'com-jdownloads/com-jdownloads-logs', 'index.php?option=com_jdownloads&view=logs', 'component', 0, 111, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jdownloads/assets/images/m_logs.gif', 0, '{}', 76, 77, 0, '', 1),
(119, 'main', 'COM_JDOWNLOADS_USER_GROUPS', 'com-jdownloads-user-groups', '', 'com-jdownloads/com-jdownloads-user-groups', 'index.php?option=com_jdownloads&view=groups', 'component', 0, 111, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jdownloads/assets/images/m_groups.gif', 0, '{}', 78, 79, 0, '', 1),
(120, 'main', 'COM_JDOWNLOADS_CONFIGURATION', 'com-jdownloads-configuration', '', 'com-jdownloads/com-jdownloads-configuration', 'index.php?option=com_jdownloads&view=config', 'component', 0, 111, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jdownloads/assets/images/m_config.gif', 0, '{}', 80, 81, 0, '', 1),
(121, 'main', 'COM_JDOWNLOADS_TOOLS', 'com-jdownloads-tools', '', 'com-jdownloads/com-jdownloads-tools', 'index.php?option=com_jdownloads&view=tools', 'component', 0, 111, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jdownloads/assets/images/m_tools.gif', 0, '{}', 82, 83, 0, '', 1),
(122, 'main', 'COM_JDOWNLOADS_TERMS_OF_USE', 'com-jdownloads-terms-of-use', '', 'com-jdownloads/com-jdownloads-terms-of-use', 'index.php?option=com_jdownloads&view=info', 'component', 0, 111, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jdownloads/assets/images/m_info.gif', 0, '{}', 84, 85, 0, '', 1),
(123, 'mainmenu', 'Ministry of National Policies and Economic Affairs', '2015-12-28-10-34-25', '', 'links/2015-12-28-10-34-25', '#', 'url', 1, 106, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 52, 53, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_menu_types`
--

CREATE TABLE IF NOT EXISTS `c39g0_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `c39g0_menu_types`
--

INSERT INTO `c39g0_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(3, 'header', 'header', 'header');

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_messages`
--

CREATE TABLE IF NOT EXISTS `c39g0_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `c39g0_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_modules`
--

CREATE TABLE IF NOT EXISTS `c39g0_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=102 ;

--
-- Dumping data for table `c39g0_modules`
--

INSERT INTO `c39g0_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'advert1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 0, '{"showHere":"0","showHome":"1","homeText":"","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 61, 'Header menu', '', '', 1, 'head2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"header","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 62, 'ARI Image Slider', '', '', 1, 'banner', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_ariimageslider', 1, 1, '{"width":"970","height":"320","responsive":"1","theme":"default","path":"images\\/slides","subdirLevel":"0","subdir":"0","imgNumber":"0","sortBy":"","sortDir":"asc","lightboxEngine":"corejoomlalightbox","lightbox_width":"450","lightbox_height":"300","lightbox_grouping":"1","lightbox_bgColor":"","opt_manualAdvance":"0","fixTransparentBg":"0","opt_disableClick":"0","opt_effect":"random","opt_slices":"15","opt_boxCols":"8","opt_boxRows":"4","opt_animSpeed":"500","opt_pauseTime":"3000","opt_startSlide":"0","opt_randomStart":"0","showNav":"1","opt_controlNav":"1","opt_keyboardNav":"1","opt_pauseOnHover":"1","opt_stopOnEnd":"0","linkTarget":"_blank","customLinkTarget":"","i18n":"0","descrFile":"ariimageslider.ini","defaultDescription":"","defaultLink":"","imglist_useThumbs":"0","imglist_thumbWidth":"150","imglist_thumbHeight":"","imglist_thumbPath":"","opt_controlNavThumbs":"0","imglist_navThumbWidth":"75","imglist_navThumbHeight":"","imglist_navThumbPath":"","loadMethod":"ready","moduleclass_sfx":"","customstyle":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(89, 67, 'Search', '', '', 1, 'footer2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"label":"Search","width":"","text":"","button":"0","button_pos":"right","imagebutton":"0","button_text":"Go","opensearch":"1","opensearch_title":"","set_itemid":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(90, 68, 'Contact', '', '<div class="contact-details-foot">\r\n<div class="contact-type-foot first-foot"><img src="images/contactIcon/home.png" alt="" width="30" height="30" /> The Secretariat, 1st Floor,<br /> Colombo 01.</div>\r\n<div class="contact-type-foot"><img src="images/contactIcon/4n.png" alt="" width="30" height="30" /> +94-11-2484612<br /> +94-11-2484613</div>\r\n<div class="contact-type-foot"><img src="images/contactIcon/fax2.png" alt="" width="30" height="30" /> +94-11-2448063<br /> +94-11-2431620</div>\r\n<div class="contact-type-foot last-foot"><img src="images/contactIcon/mail.png" alt="" width="30" height="30" /> <span class="our-email">dgnp@npd.treasury.gov.lk</span></div>\r\n</div>', 1, 'footer1', 327, '2015-12-28 18:04:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(91, 69, 'Related Links', '', '<ul>\r\n<li style="text-align: left;"><a title="Ministry of Naional Policies and Economic Affairs" href="http://www.gic.gov.lk/gic/index.php?option=com_org&amp;Itemid=4&amp;id=78&amp;task=org&amp;lang=en" target="_blank">Ministry of National Policies and Economic Affairs</a></li>\r\n<li style="text-align: left;"><a title="Ministry of Finance" href="http://www.treasury.gov.lk/" target="_blank">Ministry of Finance</a></li>\r\n<li style="text-align: left;"><a href="https://www.gov.lk/welcome.html" target="_blank">Official Web Portal of Government of Sri Lanka</a></li>\r\n</ul>', 1, 'footer3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(92, 70, 'Connect with Us', '', '<p><img src="images/social/fb_icon.png" alt="connect to facebook" width="38" height="37" /> <img src="images/social/google_icon.png" alt="connect to google plus" width="38" height="37" /> <img src="images/social/twitter_icon.png" alt="connect to twitter" width="38" height="37" /> <img src="images/social/youtube_icon.png" alt="connect to you tube" width="38" height="37" /> <img src="images/social/rss_icon.png" alt="rss feeds" width="37" height="37" /></p>', 1, 'footer4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(93, 71, 'Directors', '', '<div class="dir-board">\r\n<p class="home-h left-head">Directors Board</p>\r\n<div class="director"><img src="images/man.png" alt="" width="100px" /> <strong>Mr. Some One name</strong> <em>Position-Sample Position for this person</em></div>\r\n<div class="director"><img src="images/man.png" alt="" width="100px" /> <strong>Mr. Some One name</strong> <em>Position-Sample Position for this person</em></div>\r\n<div class="director"><img src="images/women.png" alt="" width="100px" /> <strong>Mss. Some One name</strong> <em>Position-Sample Position for this person</em></div>\r\n<div class="director"><img src="images/women.png" alt="" width="100px" /> <strong>Mss. Some One name</strong> <em>Position-Sample Position for this person</em></div>\r\n</div>', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(94, 72, 'Search header', '', '', 1, 'search', 327, '2015-12-22 11:48:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_search', 1, 0, '{"label":"Search","width":"","text":"","button":"0","button_pos":"right","imagebutton":"1","button_text":"Search...","opensearch":"1","opensearch_title":"Search...","set_itemid":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(95, 74, 'jDownloads Latest', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_jdownloads_latest', 1, 1, '', 0, '*'),
(96, 75, 'jDownloads Top', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_jdownloads_top', 1, 1, '', 0, '*'),
(97, 76, 'jDownloads Last Updated', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_jdownloads_last_updated', 1, 1, '', 0, '*'),
(98, 77, 'jDownloads Most Recently Downloaded', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_jdownloads_most_recently_downloaded', 1, 1, '', 0, '*'),
(99, 78, 'jDownloads Stats', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_jdownloads_stats', 1, 1, '', 0, '*'),
(100, 79, 'jDownloads Tree', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_jdownloads_tree', 1, 1, '', 0, '*'),
(101, 80, 'jDownloads Related', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_jdownloads_related', 1, 1, '', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_modules_menu`
--

CREATE TABLE IF NOT EXISTS `c39g0_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `c39g0_modules_menu`
--

INSERT INTO `c39g0_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 101),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 101),
(94, 0);

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `c39g0_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_overrider`
--

CREATE TABLE IF NOT EXISTS `c39g0_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `c39g0_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `c39g0_postinstall_messages`
--

INSERT INTO `c39g0_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_redirect_links`
--

CREATE TABLE IF NOT EXISTS `c39g0_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) DEFAULT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_schemas`
--

CREATE TABLE IF NOT EXISTS `c39g0_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `c39g0_schemas`
--

INSERT INTO `c39g0_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.4.0-2015-02-26'),
(10003, '3.2.41');

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_session`
--

CREATE TABLE IF NOT EXISTS `c39g0_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `c39g0_session`
--

INSERT INTO `c39g0_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('tulbo0m49mshrq6oarhufnhmn2', 0, 1, '1452588502', '__default|a:6:{s:15:"session.counter";i:8;s:19:"session.timer.start";i:1452588471;s:18:"session.timer.last";i:1452588499;s:17:"session.timer.now";i:1452588501;s:8:"registry";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}s:9:"separator";s:1:".";}s:4:"user";O:5:"JUser":26:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:12:"requireReset";N;s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}s:9:"separator";s:1:".";}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:13:"\\0\\0\\0userHelper";O:18:"JUserWrapperHelper":0:{}s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}}', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_tags`
--

CREATE TABLE IF NOT EXISTS `c39g0_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `c39g0_tags`
--

INSERT INTO `c39g0_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 42, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_template_styles`
--

CREATE TABLE IF NOT EXISTS `c39g0_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `c39g0_template_styles`
--

INSERT INTO `c39g0_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'cardeluxe', 0, '1', 'Car Deluxe - Default', '{"selectlogo":"templates\\/cardeluxe\\/images\\/logo.png","selectfont":"ff1"}');

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_ucm_base`
--

CREATE TABLE IF NOT EXISTS `c39g0_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_ucm_content`
--

CREATE TABLE IF NOT EXISTS `c39g0_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_ucm_history`
--

CREATE TABLE IF NOT EXISTS `c39g0_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=102 ;

--
-- Dumping data for table `c39g0_ucm_history`
--

INSERT INTO `c39g0_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 1, 1, '', '2015-12-22 05:53:26', 327, 1664, 'f7420171206a2c8fff428f6e79a7909bed6b4358', '{"id":1,"asset_id":54,"title":"publications","alias":"publications","introtext":"","fulltext":"","state":1,"catid":"2","created":"2015-12-22 05:53:26","created_by":"327","created_by_alias":"","modified":"2015-12-22 05:53:26","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-12-22 05:53:26","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(3, 3, 1, '', '2015-12-22 06:01:04', 327, 1670, 'e268c83199be4965c9c7e0b7ada29eb42aef35ec', '{"id":3,"asset_id":56,"title":"Sector Policies","alias":"sector-policies","introtext":"","fulltext":"","state":1,"catid":"2","created":"2015-12-22 06:01:04","created_by":"327","created_by_alias":"","modified":"2015-12-22 06:01:04","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-12-22 06:01:04","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(4, 4, 1, '', '2015-12-22 06:01:20', 327, 1650, 'bf677d916def6182afcc442ce2dd3157d4aad6d0', '{"id":4,"asset_id":57,"title":"Links","alias":"links","introtext":"","fulltext":"","state":1,"catid":"2","created":"2015-12-22 06:01:20","created_by":"327","created_by_alias":"","modified":"2015-12-22 06:01:20","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-12-22 06:01:20","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(5, 5, 1, '', '2015-12-22 06:01:39', 327, 1658, 'b3a57a3ed5af68188a4756461e4effaaf38dfdcc', '{"id":5,"asset_id":58,"title":"Circulars","alias":"circulars","introtext":"","fulltext":"","state":1,"catid":"2","created":"2015-12-22 06:01:39","created_by":"327","created_by_alias":"","modified":"2015-12-22 06:01:39","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-12-22 06:01:39","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(6, 6, 1, '', '2015-12-22 06:01:59', 327, 1696, 'ab60a76ad4a69dca5706e2b2e417db47863221a8', '{"id":6,"asset_id":59,"title":"Description of Photo Gallery","alias":"description-of-photo-gallery","introtext":"","fulltext":"","state":1,"catid":"2","created":"2015-12-22 06:01:59","created_by":"327","created_by_alias":"","modified":"2015-12-22 06:01:59","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-12-22 06:01:59","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(10, 8, 5, '', '2015-12-22 06:36:07', 327, 549, '174b97efaed4af1266df288e8a51d4b2b1a472ba', '{"id":8,"asset_id":63,"parent_id":"1","lft":"11","rgt":12,"level":1,"path":null,"extension":"com_content","title":"iamges","alias":"iamges","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"327","created_time":"2015-12-22 06:36:07","modified_user_id":null,"modified_time":"2015-12-22 06:36:07","hits":"0","language":"*","version":null}', 0),
(11, 8, 5, '', '2015-12-22 06:39:12', 327, 575, '691fc425d89c3a49134f60bb380265684edc3fa0', '{"id":8,"asset_id":"63","parent_id":"1","lft":"11","rgt":"12","level":"1","path":"iamges","extension":"com_content","title":"imges","alias":"imges","note":"","description":"","published":"1","checked_out":"327","checked_out_time":"2015-12-22 06:38:59","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"327","created_time":"2015-12-22 06:36:07","modified_user_id":"327","modified_time":"2015-12-22 06:39:12","hits":"0","language":"*","version":"1"}', 0),
(12, 8, 1, '', '2015-12-22 06:39:21', 327, 3218, 'f6123e9fc27bad32f7d121e9a16f7aa320d8071e', '{"id":8,"asset_id":64,"title":"slide one","alias":"slide-one","introtext":"<p><img src=\\"images\\/slides\\/3.jpg\\" alt=\\"\\" width=\\"417\\" height=\\"174\\" \\/><\\/p>\\r\\n<p>Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one DescriptionSlide one Description Slide one Description v Slide one Description v v Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one Description Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description<\\/p>\\r\\n<p>Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one DescriptionSlide one Description Slide one Description v Slide one Description v v Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one Description Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one DescriptionSlide one Description Slide one Description v Slide one Description v v Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one Description Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description<\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"8","created":"2015-12-22 06:39:21","created_by":"327","created_by_alias":"","modified":"2015-12-22 06:39:21","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-12-22 06:39:21","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(13, 9, 1, '', '2015-12-22 06:40:26', 327, 3680, '861d674f44adb16d15eda03a814b36268a80f143', '{"id":9,"asset_id":65,"title":"Slide two","alias":"slide-two","introtext":"<p><img src=\\"images\\/slides\\/1.jpg\\" alt=\\"\\" width=\\"468\\" height=\\"194\\" \\/><\\/p>\\r\\n<p>Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one DescriptionSlide one Description Slide one Description v Slide one Description v v Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one Description Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one DescriptionSlide one Description Slide one Description v Slide one Description v v Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one Description Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description<\\/p>\\r\\n<p>Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one DescriptionSlide one Description Slide one Description v Slide one Description v v Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one Description Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one DescriptionSlide one Description Slide one Description v Slide one Description v v Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one Description Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description<\\/p>","fulltext":"","state":1,"catid":"8","created":"2015-12-22 06:40:26","created_by":"327","created_by_alias":"","modified":"2015-12-22 06:40:26","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-12-22 06:40:26","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(14, 10, 1, '', '2015-12-22 06:40:59', 327, 3695, '566cf38cc79192845bdd3de948c58816e9b199cc', '{"id":10,"asset_id":66,"title":"Slide Three","alias":"slide-three","introtext":"<p><img src=\\"images\\/slides\\/2.jpg\\" alt=\\"\\" width=\\"451\\" height=\\"187\\" \\/><\\/p>\\r\\n<p>Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one DescriptionSlide one Description Slide one Description v Slide one Description v v Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one Description Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description<\\/p>\\r\\n<p>Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one DescriptionSlide one Description Slide one Description v Slide one Description v v Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one Description Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description<\\/p>\\r\\n<p>Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one DescriptionSlide one Description Slide one Description v Slide one Description v v Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one Description Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one DescriptionSlide one Description Slide one Description v Slide one Description v v Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description Slide one Description Slide one Description Slide one Description Slide one DescriptionSlide one DescriptionSlide one DescriptionSlide one Description<\\/p>","fulltext":"","state":1,"catid":"8","created":"2015-12-22 06:40:59","created_by":"327","created_by_alias":"","modified":"2015-12-22 06:40:59","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-12-22 06:40:59","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(15, 11, 1, '', '2015-12-22 14:42:37', 327, 1669, 'ae20c57c77ce21a5a11f117c15f86ba4e568223d', '{"id":11,"asset_id":73,"title":"Home","alias":"home","introtext":"<p>Home content<\\/p>","fulltext":"","state":1,"catid":"2","created":"2015-12-22 14:42:37","created_by":"327","created_by_alias":"","modified":"2015-12-22 14:42:37","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-12-22 14:42:37","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(16, 11, 1, '', '2015-12-22 14:54:45', 327, 1709, 'd69dc2513b4a4cf16dcae2d59a82204cc4e47d9c', '{"id":11,"asset_id":"73","title":"Home","alias":"home","introtext":"<div class=\\"home-content\\">\\u00a0<\\/div>","fulltext":"","state":1,"catid":"2","created":"2015-12-22 14:42:37","created_by":"327","created_by_alias":"","modified":"2015-12-22 14:54:45","modified_by":"327","checked_out":"327","checked_out_time":"2015-12-22 14:53:27","publish_up":"2015-12-22 14:42:37","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"5","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(17, 11, 1, '', '2015-12-22 14:56:25', 327, 1793, 'f96ecac291ad98f293498a7f9e91d134ac2a6180', '{"id":11,"asset_id":"73","title":"Home","alias":"home","introtext":"<div class=\\"home-content\\">\\r\\n<div>National Planning<\\/div>\\r\\n<div>Our Vision<\\/div>\\r\\n<div>Our Mission<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2015-12-22 14:42:37","created_by":"327","created_by_alias":"","modified":"2015-12-22 14:56:25","modified_by":"327","checked_out":"327","checked_out_time":"2015-12-22 14:54:45","publish_up":"2015-12-22 14:42:37","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"5","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(18, 11, 1, '', '2015-12-22 14:59:35', 327, 2980, 'b9824ba50c4fba59781ff9ff70c57734310afdac', '{"id":11,"asset_id":"73","title":"Home","alias":"home","introtext":"<div class=\\"home-content\\">\\r\\n<div>\\r\\n<div class=\\"heading\\">National Planning<\\/div>\\r\\n<div>\\r\\n<p>The Department of National Planning as a part of the apex Ministry of Finance and Planning committed to policy development, planning and implementation, to accelerate Sri Lanka''s economic growth and social progress. This Department provides a national perspective to policies, programmes and projects, in contrast to the sectoral or regional perspectives of other institutions. It is located in the Ministry of Finance Secretariat, which helps maintain close interaction with the Treasury and its Departments.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div>\\r\\n<div class=\\"heading\\">Our Vision<\\/div>\\r\\n<div>\\r\\n<p>To be most competent development advsior and facilitator to the nation.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div>\\r\\n<div class=\\"heading\\">Our Mission<\\/div>\\r\\n<div>\\r\\n<p>Stimulate Socio-economic development by guiding the public sector for appropriate policies, programmes and strategies and provide enabling enviroment for the private sector incorporating adequate safeguard to ensure equity and improve living standards.<\\/p>\\r\\n<p>This end, the highest level of professionalism will be developed and maintained through continuous upgrading of skills and knowledge.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2015-12-22 14:42:37","created_by":"327","created_by_alias":"","modified":"2015-12-22 14:59:35","modified_by":"327","checked_out":"327","checked_out_time":"2015-12-22 14:56:25","publish_up":"2015-12-22 14:42:37","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"5","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(19, 11, 1, '', '2015-12-22 15:14:53', 327, 3056, '8987fa52197ac84456e9ce2099feee37565f169e', '{"id":11,"asset_id":"73","title":"Home","alias":"home","introtext":"<div class=\\"home-content\\">\\r\\n<div>\\r\\n<div class=\\"heading\\">National Planning<\\/div>\\r\\n<div class=\\"home-content-p\\">\\r\\n<p>The Department of National Planning as a part of the apex Ministry of Finance and Planning committed to policy development, planning and implementation, to accelerate Sri Lanka''s economic growth and social progress. This Department provides a national perspective to policies, programmes and projects, in contrast to the sectoral or regional perspectives of other institutions. It is located in the Ministry of Finance Secretariat, which helps maintain close interaction with the Treasury and its Departments.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div>\\r\\n<div class=\\"heading\\">Our Vision<\\/div>\\r\\n<div class=\\"home-content-p\\">\\r\\n<p>To be most competent development advsior and facilitator to the nation.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div>\\r\\n<div class=\\"heading\\">Our Mission<\\/div>\\r\\n<div class=\\"home-content-p\\">\\r\\n<p>Stimulate Socio-economic development by guiding the public sector for appropriate policies, programmes and strategies and provide enabling enviroment for the private sector incorporating adequate safeguard to ensure equity and improve living standards.<\\/p>\\r\\n<p>This end, the highest level of professionalism will be developed and maintained through continuous upgrading of skills and knowledge.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2015-12-22 14:42:37","created_by":"327","created_by_alias":"","modified":"2015-12-22 15:14:53","modified_by":"327","checked_out":"327","checked_out_time":"2015-12-22 14:59:35","publish_up":"2015-12-22 14:42:37","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"10","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(20, 11, 1, '', '2015-12-22 15:16:48', 327, 3098, 'dc86a51a443c7acc7f9d840fb836e77e6ced2304', '{"id":11,"asset_id":"73","title":"Home","alias":"home","introtext":"<div class=\\"home-content\\">\\r\\n<div>\\r\\n<div class=\\"heading\\">National Planning<\\/div>\\r\\n<div class=\\"home-content-p\\">\\r\\n<p>The Department of National Planning as a part of the apex Ministry of Finance and Planning committed to policy development, planning and implementation, to accelerate Sri Lanka''s economic growth and social progress. This Department provides a national perspective to policies, programmes and projects, in contrast to the sectoral or regional perspectives of other institutions. It is located in the Ministry of Finance Secretariat, which helps maintain close interaction with the Treasury and its Departments.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div>\\r\\n<div class=\\"nested-home\\">\\r\\n<div class=\\"heading\\">Our Vision<\\/div>\\r\\n<div class=\\"home-content-p\\">\\r\\n<p>To be most competent development advsior and facilitator to the nation.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div>\\r\\n<div class=\\"heading\\">Our Mission<\\/div>\\r\\n<div class=\\"home-content-p\\">\\r\\n<p>Stimulate Socio-economic development by guiding the public sector for appropriate policies, programmes and strategies and provide enabling enviroment for the private sector incorporating adequate safeguard to ensure equity and improve living standards.<\\/p>\\r\\n<p>This end, the highest level of professionalism will be developed and maintained through continuous upgrading of skills and knowledge.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2015-12-22 14:42:37","created_by":"327","created_by_alias":"","modified":"2015-12-22 15:16:48","modified_by":"327","checked_out":"327","checked_out_time":"2015-12-22 15:14:53","publish_up":"2015-12-22 14:42:37","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"11","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(21, 11, 1, '', '2015-12-22 15:22:43', 327, 3133, 'dd57e7317c0d7c5e26d9cf18792bb01c66d98384', '{"id":11,"asset_id":"73","title":"Home","alias":"home","introtext":"<div class=\\"home-content\\">\\r\\n<div>\\r\\n<div class=\\"heading\\">National Planning<\\/div>\\r\\n<div class=\\"home-content-p\\">\\r\\n<p>The Department of National Planning as a part of the apex Ministry of Finance and Planning committed to policy development, planning and implementation, to accelerate Sri Lanka''s economic growth and social progress. This Department provides a national perspective to policies, programmes and projects, in contrast to the sectoral or regional perspectives of other institutions. It is located in the Ministry of Finance Secretariat, which helps maintain close interaction with the Treasury and its Departments.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"nested-home\\">\\r\\n<div class=\\"vision\\">\\r\\n<div class=\\"heading\\">Our Vision<\\/div>\\r\\n<div class=\\"home-content-p\\">\\r\\n<p>To be most competent development advsior and facilitator to the nation.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"mission\\">\\r\\n<div class=\\"heading\\">Our Mission<\\/div>\\r\\n<div class=\\"home-content-p\\">\\r\\n<p>Stimulate Socio-economic development by guiding the public sector for appropriate policies, programmes and strategies and provide enabling enviroment for the private sector incorporating adequate safeguard to ensure equity and improve living standards.<\\/p>\\r\\n<p>This end, the highest level of professionalism will be developed and maintained through continuous upgrading of skills and knowledge.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2015-12-22 14:42:37","created_by":"327","created_by_alias":"","modified":"2015-12-22 15:22:43","modified_by":"327","checked_out":"327","checked_out_time":"2015-12-22 15:16:48","publish_up":"2015-12-22 14:42:37","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":7,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"12","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(22, 11, 1, '', '2015-12-22 15:24:12', 327, 3010, '9ab5b8134032eb9548346959b8bd72d007b417f3', '{"id":11,"asset_id":"73","title":"Home","alias":"home","introtext":"<div class=\\"home-content\\">\\r\\n<div>\\r\\n<div class=\\"heading\\">National Planning\\r\\n<p>The Department of National Planning as a part of the apex Ministry of Finance and Planning committed to policy development, planning and implementation, to accelerate Sri Lanka''s economic growth and social progress. This Department provides a national perspective to policies, programmes and projects, in contrast to the sectoral or regional perspectives of other institutions. It is located in the Ministry of Finance Secretariat, which helps maintain close interaction with the Treasury and its Departments.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"nested-home\\">\\r\\n<div class=\\"vision\\">\\r\\n<div class=\\"heading\\">Our Vision\\r\\n<p>To be most competent development advsior and facilitator to the nation.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"mission\\">\\r\\n<div class=\\"heading\\">Our Mission\\r\\n<p>Stimulate Socio-economic development by guiding the public sector for appropriate policies, programmes and strategies and provide enabling enviroment for the private sector incorporating adequate safeguard to ensure equity and improve living standards.<\\/p>\\r\\n<p>This end, the highest level of professionalism will be developed and maintained through continuous upgrading of skills and knowledge.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2015-12-22 14:42:37","created_by":"327","created_by_alias":"","modified":"2015-12-22 15:24:12","modified_by":"327","checked_out":"327","checked_out_time":"2015-12-22 15:22:43","publish_up":"2015-12-22 14:42:37","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":8,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"13","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(23, 11, 1, '', '2015-12-22 15:27:51', 327, 3165, 'fa351dec802917447d3e170709fade428206d95e', '{"id":11,"asset_id":"73","title":"Home","alias":"home","introtext":"<div class=\\"home-content\\">\\r\\n<div>\\r\\n<div class=\\"heading\\">\\r\\n<p class=\\"home-h\\">National Planning<\\/p>\\r\\n<p class=\\"home-c\\">The Department of National Planning as a part of the apex Ministry of Finance and Planning committed to policy development, planning and implementation, to accelerate Sri Lanka''s economic growth and social progress. This Department provides a national perspective to policies, programmes and projects, in contrast to the sectoral or regional perspectives of other institutions. It is located in the Ministry of Finance Secretariat, which helps maintain close interaction with the Treasury and its Departments.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"nested-home\\">\\r\\n<div class=\\"vision\\">\\r\\n<div class=\\"heading\\">\\r\\n<p class=\\"home-h\\">Our Vision<\\/p>\\r\\n<p class=\\"home-c\\">To be most competent development advsior and facilitator to the nation.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"mission\\">\\r\\n<div class=\\"heading\\">\\r\\n<p class=\\"home-h\\">Our Mission<\\/p>\\r\\n<p class=\\"home-c\\">Stimulate Socio-economic development by guiding the public sector for appropriate policies, programmes and strategies and provide enabling enviroment for the private sector incorporating adequate safeguard to ensure equity and improve living standards.<\\/p>\\r\\n<p class=\\"home-c\\">This end, the highest level of professionalism will be developed and maintained through continuous upgrading of skills and knowledge.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2015-12-22 14:42:37","created_by":"327","created_by_alias":"","modified":"2015-12-22 15:27:51","modified_by":"327","checked_out":"327","checked_out_time":"2015-12-22 15:24:12","publish_up":"2015-12-22 14:42:37","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":9,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"14","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `c39g0_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(64, 11, 1, '', '2015-12-28 05:15:34', 327, 3184, '2e334e63d4c346f5bddda548af295048d4fb27e4', '{"id":11,"asset_id":"73","title":"Home","alias":"home","introtext":"<div class=\\"home-content\\">\\r\\n<div>\\r\\n<div class=\\"heading\\">\\r\\n<p class=\\"home-h\\">National Planning<\\/p>\\r\\n<p class=\\"home-c\\">The Department of National Planning as a part of the apex Ministry of National Policies and Economic Affairs committed to policy development, planning and implementation, to accelerate Sri Lanka''s economic growth and social progress. This Department provides a national perspective to policies, programmes and projects, in contrast to the sectoral or regional perspectives of other institutions. It is located in the Ministry of Finance Secretariat, which helps maintain close interaction with the Treasury and its Departments.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"nested-home\\">\\r\\n<div class=\\"vision\\">\\r\\n<div class=\\"heading\\">\\r\\n<p class=\\"home-h\\">Our Vision<\\/p>\\r\\n<p class=\\"home-c\\">To be most competent development advsior and facilitator to the nation.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"mission\\">\\r\\n<div class=\\"heading\\">\\r\\n<p class=\\"home-h\\">Our Mission<\\/p>\\r\\n<p class=\\"home-c\\">Stimulate Socio-economic development by guiding the public sector for appropriate policies, programmes and strategies and provide enabling enviroment for the private sector incorporating adequate safeguard to ensure equity and improve living standards.<\\/p>\\r\\n<p class=\\"home-c\\">This end, the highest level of professionalism will be developed and maintained through continuous upgrading of skills and knowledge.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2015-12-22 14:42:37","created_by":"327","created_by_alias":"","modified":"2015-12-28 05:15:34","modified_by":"327","checked_out":"327","checked_out_time":"2015-12-28 05:14:00","publish_up":"2015-12-22 14:42:37","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":10,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"71","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(66, 7, 1, '', '2015-12-28 06:04:56', 327, 1685, '3b769adef41684d3322a27c4fac8dd468781e866', '{"id":7,"asset_id":"60","title":"Project Submission Format","alias":"project-submission-format","introtext":"<p>{jd_file file==1}<\\/p>","fulltext":"","state":1,"catid":"2","created":"2015-12-22 06:02:17","created_by":"327","created_by_alias":"","modified":"2015-12-28 06:04:56","modified_by":"327","checked_out":"327","checked_out_time":"2015-12-28 06:02:40","publish_up":"2015-12-22 06:02:17","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_intro\\":\\"0\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"0\\",\\"show_article_options\\":\\"0\\",\\"show_urls_images_backend\\":\\"0\\",\\"show_urls_images_frontend\\":\\"0\\"}","version":4,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"15","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(67, 7, 1, '', '2015-12-28 06:07:42', 327, 1660, 'c4504cacaa6c6a43cdf1db5b58004a2ec0615a9a', '{"id":7,"asset_id":"60","title":"Project Submission Format","alias":"project-submission-format","introtext":"","fulltext":"","state":1,"catid":"2","created":"2015-12-22 06:02:17","created_by":"327","created_by_alias":"","modified":"2015-12-28 06:07:42","modified_by":"327","checked_out":"327","checked_out_time":"2015-12-28 06:07:33","publish_up":"2015-12-22 06:02:17","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_intro\\":\\"0\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"0\\",\\"show_article_options\\":\\"0\\",\\"show_urls_images_backend\\":\\"0\\",\\"show_urls_images_frontend\\":\\"0\\"}","version":5,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"18","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(68, 7, 1, '', '2015-12-28 06:47:49', 327, 1835, '9c3fd90f18ebbb8f5e34603927be717797b24d8e', '{"id":7,"asset_id":"60","title":"Project Submission Format","alias":"project-submission-format","introtext":"<p><a><img src=\\"images\\/Download1-.png\\" alt=\\"\\" width=\\"113\\" height=\\"113\\" \\/><\\/a><\\/p>\\r\\n<p class=\\"img-link\\">Download-Project Submition Format<\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"2","created":"2015-12-22 06:02:17","created_by":"327","created_by_alias":"","modified":"2015-12-28 06:47:49","modified_by":"327","checked_out":"327","checked_out_time":"2015-12-28 06:45:28","publish_up":"2015-12-22 06:02:17","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_intro\\":\\"0\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"0\\",\\"show_article_options\\":\\"0\\",\\"show_urls_images_backend\\":\\"0\\",\\"show_urls_images_frontend\\":\\"0\\"}","version":6,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"21","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(69, 7, 1, '', '2015-12-28 06:48:26', 327, 1846, '3e175fd6c727dfee37f5ce1d41d81107bad216fc', '{"id":7,"asset_id":"60","title":"Project Submission Format","alias":"project-submission-format","introtext":"<p><a href=\\"#\\"><img src=\\"images\\/Download1-.png\\" alt=\\"\\" width=\\"113\\" height=\\"113\\" \\/><\\/a><\\/p>\\r\\n<p class=\\"img-link\\">Download-Project Submition Format<\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"2","created":"2015-12-22 06:02:17","created_by":"327","created_by_alias":"","modified":"2015-12-28 06:48:26","modified_by":"327","checked_out":"327","checked_out_time":"2015-12-28 06:47:49","publish_up":"2015-12-22 06:02:17","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_intro\\":\\"0\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"0\\",\\"show_article_options\\":\\"0\\",\\"show_urls_images_backend\\":\\"0\\",\\"show_urls_images_frontend\\":\\"0\\"}","version":7,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"22","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(70, 7, 1, '', '2015-12-28 06:53:02', 327, 1887, 'd66c7aae555e2c1e12e143ea1cac2a856ae70ce8', '{"id":7,"asset_id":"60","title":"Project Submission Format","alias":"project-submission-format","introtext":"<p><a href=\\"images\\/files\\/projectSubmissionFormat.doc\\"><img src=\\"images\\/Download1-.png\\" alt=\\"\\" width=\\"113\\" height=\\"113\\" \\/><\\/a><\\/p>\\r\\n<p class=\\"img-link\\">Download-Project Submition Format<\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"2","created":"2015-12-22 06:02:17","created_by":"327","created_by_alias":"","modified":"2015-12-28 06:53:02","modified_by":"327","checked_out":"327","checked_out_time":"2015-12-28 06:48:26","publish_up":"2015-12-22 06:02:17","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_intro\\":\\"0\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"0\\",\\"show_article_options\\":\\"0\\",\\"show_urls_images_backend\\":\\"0\\",\\"show_urls_images_frontend\\":\\"0\\"}","version":8,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"23","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(71, 7, 1, '', '2015-12-28 07:00:17', 327, 1995, 'ea7d72d969a47c8df52d33e2312dc285556c9913', '{"id":7,"asset_id":"60","title":"Project Submission Format","alias":"project-submission-format","introtext":"<table>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>Download<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Project Submition Format<\\/td>\\r\\n<td><a href=\\"images\\/files\\/projectSubmissionFormat.doc\\"><img src=\\"images\\/Download1-.png\\" alt=\\"\\" width=\\"113\\" height=\\"113\\" \\/><\\/a>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"2","created":"2015-12-22 06:02:17","created_by":"327","created_by_alias":"","modified":"2015-12-28 07:00:17","modified_by":"327","checked_out":"327","checked_out_time":"2015-12-28 06:53:02","publish_up":"2015-12-22 06:02:17","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_intro\\":\\"0\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"0\\",\\"show_article_options\\":\\"0\\",\\"show_urls_images_backend\\":\\"0\\",\\"show_urls_images_frontend\\":\\"0\\"}","version":9,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"24","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(72, 7, 1, '', '2015-12-28 07:01:02', 327, 1994, '083b3671b7b6182bb37fcc9347fa39389fe839d6', '{"id":7,"asset_id":"60","title":"Project Submission Format","alias":"project-submission-format","introtext":"<table>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>Download<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Project Submition Format<\\/td>\\r\\n<td><a href=\\"images\\/files\\/projectSubmissionFormat.doc\\"><img src=\\"images\\/Download1-.png\\" alt=\\"\\" width=\\"33\\" height=\\"33\\" \\/><\\/a>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"2","created":"2015-12-22 06:02:17","created_by":"327","created_by_alias":"","modified":"2015-12-28 07:01:02","modified_by":"327","checked_out":"327","checked_out_time":"2015-12-28 07:00:17","publish_up":"2015-12-22 06:02:17","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_intro\\":\\"0\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"0\\",\\"show_article_options\\":\\"0\\",\\"show_urls_images_backend\\":\\"0\\",\\"show_urls_images_frontend\\":\\"0\\"}","version":10,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"25","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(73, 7, 1, '', '2015-12-28 07:01:20', 327, 1994, '68b2e6439659c5d83f3ad903934c426c78a84211', '{"id":7,"asset_id":"60","title":"Project Submission Format","alias":"project-submission-format","introtext":"<table>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>Download<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Project Submition Format<\\/td>\\r\\n<td><a href=\\"images\\/files\\/projectSubmissionFormat.doc\\"><img src=\\"images\\/Download1-.png\\" alt=\\"\\" width=\\"58\\" height=\\"58\\" \\/><\\/a>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"2","created":"2015-12-22 06:02:17","created_by":"327","created_by_alias":"","modified":"2015-12-28 07:01:20","modified_by":"327","checked_out":"327","checked_out_time":"2015-12-28 07:01:02","publish_up":"2015-12-22 06:02:17","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_intro\\":\\"0\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"0\\",\\"show_article_options\\":\\"0\\",\\"show_urls_images_backend\\":\\"0\\",\\"show_urls_images_frontend\\":\\"0\\"}","version":11,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"26","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(74, 7, 1, '', '2015-12-28 07:02:04', 327, 1959, '4fa7c941a242672b5e52d7d2b87d3aa565a8632a', '{"id":7,"asset_id":"60","title":"Project Submission Format","alias":"project-submission-format","introtext":"<table class=\\"download-forms\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td>Project Submition Format<\\/td>\\r\\n<td><a href=\\"images\\/files\\/projectSubmissionFormat.doc\\"><img src=\\"images\\/Download1-.png\\" alt=\\"\\" width=\\"58\\" height=\\"58\\" \\/><\\/a>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"2","created":"2015-12-22 06:02:17","created_by":"327","created_by_alias":"","modified":"2015-12-28 07:02:04","modified_by":"327","checked_out":"327","checked_out_time":"2015-12-28 07:01:20","publish_up":"2015-12-22 06:02:17","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_intro\\":\\"0\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"0\\",\\"show_article_options\\":\\"0\\",\\"show_urls_images_backend\\":\\"0\\",\\"show_urls_images_frontend\\":\\"0\\"}","version":12,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"27","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(76, 1, 1, '', '2015-12-28 10:58:13', 327, 1738, '8bd2e5af24433779f4055133e13c574e7b2c9ccb', '{"id":1,"asset_id":"54","title":"publications","alias":"publications","introtext":"<p class=\\"under-costruction\\">Under Construction<\\/p>","fulltext":"","state":1,"catid":"2","created":"2015-12-22 05:53:26","created_by":"327","created_by_alias":"","modified":"2015-12-28 10:58:13","modified_by":"327","checked_out":"327","checked_out_time":"2015-12-28 10:56:53","publish_up":"2015-12-22 05:53:26","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"7","metakey":"","metadesc":"","access":"1","hits":"15","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(77, 5, 1, '', '2015-12-28 10:58:21', 327, 1732, '28dcad3f8d2daadbd711b28ff73283e2a943092f', '{"id":5,"asset_id":"58","title":"Circulars","alias":"circulars","introtext":"<p class=\\"under-costruction\\">Under Construction<\\/p>","fulltext":"","state":1,"catid":"2","created":"2015-12-22 06:01:39","created_by":"327","created_by_alias":"","modified":"2015-12-28 10:58:21","modified_by":"327","checked_out":"327","checked_out_time":"2015-12-28 10:57:02","publish_up":"2015-12-22 06:01:39","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"10","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(78, 3, 1, '', '2015-12-28 10:58:29', 327, 1743, '9600bf8b4f9ab1cd5c1c56df9ec0ba023111808a', '{"id":3,"asset_id":"56","title":"Sector Policies","alias":"sector-policies","introtext":"<p class=\\"under-costruction\\">Under Construction<\\/p>","fulltext":"","state":1,"catid":"2","created":"2015-12-22 06:01:04","created_by":"327","created_by_alias":"","modified":"2015-12-28 10:58:29","modified_by":"327","checked_out":"327","checked_out_time":"2015-12-28 10:57:04","publish_up":"2015-12-22 06:01:04","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"5","metakey":"","metadesc":"","access":"1","hits":"6","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(83, 7, 1, '', '2015-12-28 15:51:32', 327, 1958, 'eeba301ba5da65d19a6b832b10b5d631c881bbfb', '{"id":7,"asset_id":"60","title":"Project Submission Format","alias":"project-submission-format","introtext":"<table class=\\"download-forms\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td>Project Submition Format<\\/td>\\r\\n<td><a href=\\"images\\/files\\/projectSubmissionFormat.doc\\"><img src=\\"images\\/Download1.png\\" alt=\\"\\" width=\\"58\\" height=\\"58\\" \\/><\\/a>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"2","created":"2015-12-22 06:02:17","created_by":"327","created_by_alias":"","modified":"2015-12-28 15:51:32","modified_by":"327","checked_out":"327","checked_out_time":"2015-12-28 15:51:10","publish_up":"2015-12-22 06:02:17","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_intro\\":\\"0\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"0\\",\\"show_article_options\\":\\"0\\",\\"show_urls_images_backend\\":\\"0\\",\\"show_urls_images_frontend\\":\\"0\\"}","version":13,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"37","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(92, 2, 1, '', '2015-12-28 17:25:28', 327, 9694, '12c306caaf2463ba2d4fc2bb0845df2d711609ec', '{"id":2,"asset_id":"55","title":"Contact","alias":"contact","introtext":"<div>\\r\\n<div class=\\"map-contact\\"><iframe style=\\"border: 0;\\" src=\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3960.6444411802963!2d79.86342632753218!3d6.933031103875875!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae25905bf4b334f%3A0x2ff96db40d2d45ad!2sDepartment+of+Motor+Traffic!5e0!3m2!1sen!2s!4v1451236549040\\" width=\\"100%\\" height=\\"250\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/div>\\r\\n<div class=\\"contact-details\\">\\r\\n<div class=\\"contact-type first\\"><img src=\\"images\\/contactIcon\\/home.png\\" alt=\\"\\" width=\\"54\\" height=\\"54\\" \\/> The Secretariat,<br \\/> 1st Floor,<br \\/> Colombo 01.<\\/div>\\r\\n<div class=\\"contact-type\\"><img src=\\"images\\/contactIcon\\/4n.png\\" alt=\\"\\" width=\\"54\\" height=\\"54\\" \\/> +94-11-2484612<br \\/> +94-11-2484613<\\/div>\\r\\n<div class=\\"contact-type\\"><img src=\\"images\\/contactIcon\\/fax2.png\\" alt=\\"\\" width=\\"54\\" height=\\"54\\" \\/> +94-11-2448063<br \\/> +94-11-2431620<\\/div>\\r\\n<div class=\\"contact-type\\"><img src=\\"images\\/contactIcon\\/mail.png\\" alt=\\"\\" width=\\"54\\" height=\\"54\\" \\/>\\u00a0 <span class=\\"our-email\\">dgnp@npd.treasury.gov.lk<\\/span><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<table class=\\"contact-more\\" border=\\"1\\">\\r\\n<tbody>\\r\\n<tr><th>\\u00a0<\\/th><th>Position<\\/th><th>Name<\\/th><th>Phone<\\/th><th>Res<\\/th><\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"4\\">Department of National Planning<\\/td>\\r\\n<td>Director General<\\/td>\\r\\n<td>Mr. S.S.Mudalige<\\/td>\\r\\n<td>2484593\\/2484566<\\/td>\\r\\n<td>2719590<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Additional Director General<br \\/>(Public Investment &amp; Diagnostic Review)<\\/td>\\r\\n<td>Mrs. M.Gangatharan<\\/td>\\r\\n<td>2484576<\\/td>\\r\\n<td>2584881<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Additional Director General<br \\/>(Policy Development )<\\/td>\\r\\n<td>Mrs.J.M.S.D. Rathnayaka<\\/td>\\r\\n<td>2484586<\\/td>\\r\\n<td>2608447<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Additional Director General<br \\/>(Project Review )<\\/td>\\r\\n<td>Mr.K.D.S.R.Perera<\\/td>\\r\\n<td>2484567<\\/td>\\r\\n<td>0342221396<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"5\\">Agriculture, Irrigation, Land, Livestock and Fisheries<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Mr. Rohitha Wickramarathna<\\/td>\\r\\n<td>2484608<\\/td>\\r\\n<td>0382243501<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Agriculture)<\\/td>\\r\\n<td>Ms: T.Y.L. Munasinghe<\\/td>\\r\\n<td>2484920<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Irrigation &amp; Land)<\\/td>\\r\\n<td>Mr: P.M.S. Jayathilaka<\\/td>\\r\\n<td>2484860<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Fisheries &amp; Livestock)<\\/td>\\r\\n<td>Mrs: H.K.T. Gunawardhana<\\/td>\\r\\n<td>2484585<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Plantation)<\\/td>\\r\\n<td>Mrs: M.A. Sudarshani Dabarera<\\/td>\\r\\n<td>2484927<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"3\\">Regional Development &amp; Social Protection<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Mr. T.M.J.Bandara<\\/td>\\r\\n<td>2484573<\\/td>\\r\\n<td>0372232893<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Social Protection)<\\/td>\\r\\n<td>Mrs: D.A.. Niharepola<\\/td>\\r\\n<td>2484928<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(regional Development)<\\/td>\\r\\n<td>Mrs: Chandaniee Ramasinghe<\\/td>\\r\\n<td>2484590<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"3\\">Health, Indigenous Medicine, Sports, Culture, Religion and National Integration<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Mrs. C.Senayake<\\/td>\\r\\n<td>2484915<\\/td>\\r\\n<td>3184030<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Helth,Indigenous Medicine)<\\/td>\\r\\n<td>Mrs: Dilani Peiris<\\/td>\\r\\n<td>2484908<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Culture, Religion&amp; National Inntegration)<\\/td>\\r\\n<td>Mrs: D.H.R.D.Wijewardena<\\/td>\\r\\n<td>2484609<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"8\\">Infrastructure Development &amp; Environment<\\/td>\\r\\n<td>Director<br \\/>( Road,Ports &amp; Transport )<\\/td>\\r\\n<td>Mr. Mallawarachchi<\\/td>\\r\\n<td>2484597<\\/td>\\r\\n<td>0342281079<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Director<br \\/>( Water,Housing and Urban Development)<\\/td>\\r\\n<td>Mr. M.F.A. Mubarak<\\/td>\\r\\n<td>2484875<\\/td>\\r\\n<td>2589629<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Roads &amp; Transport)<\\/td>\\r\\n<td>Mr: Priyankara Jayarathna<\\/td>\\r\\n<td>2484921<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Port &amp; Aviation)<\\/td>\\r\\n<td>Mrs D.N.Manorathne<\\/td>\\r\\n<td>2484969<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Housing &amp; Urban Development)<\\/td>\\r\\n<td>Miss.U.A.W. L. Sumanasekara<\\/td>\\r\\n<td>2484804<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Water Supply)<\\/td>\\r\\n<td>Mrs: K.A.H.K.Perera<\\/td>\\r\\n<td>2484872<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Environment)<\\/td>\\r\\n<td>Mr: K.B.S.S.Fernando<\\/td>\\r\\n<td>2484562<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Waster Management)<\\/td>\\r\\n<td>Mrs. W.M.Hansani<\\/td>\\r\\n<td>2484977<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"4\\">Education, Higher Education &amp; Skills Development \\/Human Capital Development<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Mr. T.A.D.D.Pramarathne<\\/td>\\r\\n<td>2484922<\\/td>\\r\\n<td>2705946<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Skills Development)<\\/td>\\r\\n<td>Mrs: Dilrukshi Samarakoon<\\/td>\\r\\n<td>2484783<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Education)<\\/td>\\r\\n<td>Ms: P.A.N.Abeysekara<\\/td>\\r\\n<td>2484925<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Higher Education &amp; Technology &amp; Reserch)<\\/td>\\r\\n<td>Mrs: K.D.C.Thamarasee<\\/td>\\r\\n<td>2484575<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Public Management &amp; Environment<\\/td>\\r\\n<td>Assistant Director<br \\/>(Public Management)<\\/td>\\r\\n<td>Mrs: P.H.Chandima<\\/td>\\r\\n<td>2484592<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"2\\">Macro Economic Planning<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Mr. T.M.J.Bandara<\\/td>\\r\\n<td>2484573<\\/td>\\r\\n<td>0372232893<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Macro Planning)<\\/td>\\r\\n<td>Mr. L.H.M.B.R.B.Lansakara<\\/td>\\r\\n<td>2484852<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"3\\">Industries &amp; Trade<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Mrs. A.K. Gunasekara<\\/td>\\r\\n<td>2484591<\\/td>\\r\\n<td>2923124<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Industry &amp; Trade)<\\/td>\\r\\n<td>Mr: R.D.A.Maithreerathna<\\/td>\\r\\n<td>2484784<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Tourism)<\\/td>\\r\\n<td>Mrs: W.L.P. Ferando<\\/td>\\r\\n<td>2484924<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"3\\">Power &amp; Energy and Decontralized Budget<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Mrs. T.Prassanth<\\/td>\\r\\n<td>2484613<\\/td>\\r\\n<td>2726073<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Power &amp; Energy)<\\/td>\\r\\n<td>Mr: R.K.L.Jagoda<\\/td>\\r\\n<td>2484866<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Decontralized Budget )<\\/td>\\r\\n<td>Mrs: Chandaniee Ramasinghe<\\/td>\\r\\n<td>2484590<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"2\\">Administration Branch<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Mrs. T. Prassanth<\\/td>\\r\\n<td>2484613<\\/td>\\r\\n<td>2726073<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Chf Management Asst<\\/td>\\r\\n<td>Mrs.K.G.P Damayanthi<\\/td>\\r\\n<td>2484612<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Accounts Branch<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Miss. N.Wijeweera<\\/td>\\r\\n<td>2484610<\\/td>\\r\\n<td>2896152<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"2\\">Development Information Center<\\/td>\\r\\n<td>Assistant Director<\\/td>\\r\\n<td>Mrs. D.H.R.D.Wijewardana<\\/td>\\r\\n<td>2484609<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Devpt Ofcr<\\/td>\\r\\n<td>Mrs.Kanchana Jayasekara<\\/td>\\r\\n<td>2484931<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>","fulltext":"","state":1,"catid":"2","created":"2015-12-22 05:59:45","created_by":"327","created_by_alias":"","modified":"2015-12-28 17:25:28","modified_by":"327","checked_out":"327","checked_out_time":"2015-12-28 17:19:18","publish_up":"2015-12-22 05:59:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":60,"ordering":"6","metakey":"","metadesc":"","access":"1","hits":"119","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `c39g0_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(93, 2, 1, '', '2015-12-28 17:27:57', 327, 9694, '98d4d5db700e2b8945f4b57605f18267bb06d705', '{"id":2,"asset_id":"55","title":"Contact","alias":"contact","introtext":"<div>\\r\\n<div class=\\"map-contact\\"><iframe style=\\"border: 0;\\" src=\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3960.6444411802963!2d79.86342632753218!3d6.933031103875875!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae25905bf4b334f%3A0x2ff96db40d2d45ad!2sDepartment+of+Motor+Traffic!5e0!3m2!1sen!2s!4v1451236549040\\" width=\\"100%\\" height=\\"250\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/div>\\r\\n<div class=\\"contact-details\\">\\r\\n<div class=\\"contact-type first\\"><img src=\\"images\\/contactIcon\\/home.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/> The Secretariat,<br \\/> 1st Floor,<br \\/> Colombo 01.<\\/div>\\r\\n<div class=\\"contact-type\\"><img src=\\"images\\/contactIcon\\/4n.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/> +94-11-2484612<br \\/> +94-11-2484613<\\/div>\\r\\n<div class=\\"contact-type\\"><img src=\\"images\\/contactIcon\\/fax2.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/> +94-11-2448063<br \\/> +94-11-2431620<\\/div>\\r\\n<div class=\\"contact-type\\"><img src=\\"images\\/contactIcon\\/mail.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/>\\u00a0 <span class=\\"our-email\\">dgnp@npd.treasury.gov.lk<\\/span><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<table class=\\"contact-more\\" border=\\"1\\">\\r\\n<tbody>\\r\\n<tr><th>\\u00a0<\\/th><th>Position<\\/th><th>Name<\\/th><th>Phone<\\/th><th>Res<\\/th><\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"4\\">Department of National Planning<\\/td>\\r\\n<td>Director General<\\/td>\\r\\n<td>Mr. S.S.Mudalige<\\/td>\\r\\n<td>2484593\\/2484566<\\/td>\\r\\n<td>2719590<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Additional Director General<br \\/>(Public Investment &amp; Diagnostic Review)<\\/td>\\r\\n<td>Mrs. M.Gangatharan<\\/td>\\r\\n<td>2484576<\\/td>\\r\\n<td>2584881<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Additional Director General<br \\/>(Policy Development )<\\/td>\\r\\n<td>Mrs.J.M.S.D. Rathnayaka<\\/td>\\r\\n<td>2484586<\\/td>\\r\\n<td>2608447<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Additional Director General<br \\/>(Project Review )<\\/td>\\r\\n<td>Mr.K.D.S.R.Perera<\\/td>\\r\\n<td>2484567<\\/td>\\r\\n<td>0342221396<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"5\\">Agriculture, Irrigation, Land, Livestock and Fisheries<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Mr. Rohitha Wickramarathna<\\/td>\\r\\n<td>2484608<\\/td>\\r\\n<td>0382243501<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Agriculture)<\\/td>\\r\\n<td>Ms: T.Y.L. Munasinghe<\\/td>\\r\\n<td>2484920<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Irrigation &amp; Land)<\\/td>\\r\\n<td>Mr: P.M.S. Jayathilaka<\\/td>\\r\\n<td>2484860<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Fisheries &amp; Livestock)<\\/td>\\r\\n<td>Mrs: H.K.T. Gunawardhana<\\/td>\\r\\n<td>2484585<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Plantation)<\\/td>\\r\\n<td>Mrs: M.A. Sudarshani Dabarera<\\/td>\\r\\n<td>2484927<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"3\\">Regional Development &amp; Social Protection<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Mr. T.M.J.Bandara<\\/td>\\r\\n<td>2484573<\\/td>\\r\\n<td>0372232893<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Social Protection)<\\/td>\\r\\n<td>Mrs: D.A.. Niharepola<\\/td>\\r\\n<td>2484928<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(regional Development)<\\/td>\\r\\n<td>Mrs: Chandaniee Ramasinghe<\\/td>\\r\\n<td>2484590<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"3\\">Health, Indigenous Medicine, Sports, Culture, Religion and National Integration<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Mrs. C.Senayake<\\/td>\\r\\n<td>2484915<\\/td>\\r\\n<td>3184030<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Helth,Indigenous Medicine)<\\/td>\\r\\n<td>Mrs: Dilani Peiris<\\/td>\\r\\n<td>2484908<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Culture, Religion&amp; National Inntegration)<\\/td>\\r\\n<td>Mrs: D.H.R.D.Wijewardena<\\/td>\\r\\n<td>2484609<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"8\\">Infrastructure Development &amp; Environment<\\/td>\\r\\n<td>Director<br \\/>( Road,Ports &amp; Transport )<\\/td>\\r\\n<td>Mr. Mallawarachchi<\\/td>\\r\\n<td>2484597<\\/td>\\r\\n<td>0342281079<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Director<br \\/>( Water,Housing and Urban Development)<\\/td>\\r\\n<td>Mr. M.F.A. Mubarak<\\/td>\\r\\n<td>2484875<\\/td>\\r\\n<td>2589629<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Roads &amp; Transport)<\\/td>\\r\\n<td>Mr: Priyankara Jayarathna<\\/td>\\r\\n<td>2484921<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Port &amp; Aviation)<\\/td>\\r\\n<td>Mrs D.N.Manorathne<\\/td>\\r\\n<td>2484969<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Housing &amp; Urban Development)<\\/td>\\r\\n<td>Miss.U.A.W. L. Sumanasekara<\\/td>\\r\\n<td>2484804<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Water Supply)<\\/td>\\r\\n<td>Mrs: K.A.H.K.Perera<\\/td>\\r\\n<td>2484872<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Environment)<\\/td>\\r\\n<td>Mr: K.B.S.S.Fernando<\\/td>\\r\\n<td>2484562<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Waster Management)<\\/td>\\r\\n<td>Mrs. W.M.Hansani<\\/td>\\r\\n<td>2484977<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"4\\">Education, Higher Education &amp; Skills Development \\/Human Capital Development<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Mr. T.A.D.D.Pramarathne<\\/td>\\r\\n<td>2484922<\\/td>\\r\\n<td>2705946<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Skills Development)<\\/td>\\r\\n<td>Mrs: Dilrukshi Samarakoon<\\/td>\\r\\n<td>2484783<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Education)<\\/td>\\r\\n<td>Ms: P.A.N.Abeysekara<\\/td>\\r\\n<td>2484925<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Higher Education &amp; Technology &amp; Reserch)<\\/td>\\r\\n<td>Mrs: K.D.C.Thamarasee<\\/td>\\r\\n<td>2484575<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Public Management &amp; Environment<\\/td>\\r\\n<td>Assistant Director<br \\/>(Public Management)<\\/td>\\r\\n<td>Mrs: P.H.Chandima<\\/td>\\r\\n<td>2484592<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"2\\">Macro Economic Planning<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Mr. T.M.J.Bandara<\\/td>\\r\\n<td>2484573<\\/td>\\r\\n<td>0372232893<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Macro Planning)<\\/td>\\r\\n<td>Mr. L.H.M.B.R.B.Lansakara<\\/td>\\r\\n<td>2484852<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"3\\">Industries &amp; Trade<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Mrs. A.K. Gunasekara<\\/td>\\r\\n<td>2484591<\\/td>\\r\\n<td>2923124<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Industry &amp; Trade)<\\/td>\\r\\n<td>Mr: R.D.A.Maithreerathna<\\/td>\\r\\n<td>2484784<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Tourism)<\\/td>\\r\\n<td>Mrs: W.L.P. Ferando<\\/td>\\r\\n<td>2484924<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"3\\">Power &amp; Energy and Decontralized Budget<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Mrs. T.Prassanth<\\/td>\\r\\n<td>2484613<\\/td>\\r\\n<td>2726073<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Power &amp; Energy)<\\/td>\\r\\n<td>Mr: R.K.L.Jagoda<\\/td>\\r\\n<td>2484866<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Decontralized Budget )<\\/td>\\r\\n<td>Mrs: Chandaniee Ramasinghe<\\/td>\\r\\n<td>2484590<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"2\\">Administration Branch<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Mrs. T. Prassanth<\\/td>\\r\\n<td>2484613<\\/td>\\r\\n<td>2726073<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Chf Management Asst<\\/td>\\r\\n<td>Mrs.K.G.P Damayanthi<\\/td>\\r\\n<td>2484612<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Accounts Branch<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Miss. N.Wijeweera<\\/td>\\r\\n<td>2484610<\\/td>\\r\\n<td>2896152<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"2\\">Development Information Center<\\/td>\\r\\n<td>Assistant Director<\\/td>\\r\\n<td>Mrs. D.H.R.D.Wijewardana<\\/td>\\r\\n<td>2484609<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Devpt Ofcr<\\/td>\\r\\n<td>Mrs.Kanchana Jayasekara<\\/td>\\r\\n<td>2484931<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>","fulltext":"","state":1,"catid":"2","created":"2015-12-22 05:59:45","created_by":"327","created_by_alias":"","modified":"2015-12-28 17:27:57","modified_by":"327","checked_out":"327","checked_out_time":"2015-12-28 17:25:28","publish_up":"2015-12-22 05:59:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":61,"ordering":"6","metakey":"","metadesc":"","access":"1","hits":"120","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(94, 2, 1, '', '2015-12-28 17:39:21', 327, 9694, 'a39d68c4764fa4a1fdf3c5ef678493543bd9dc43', '{"id":2,"asset_id":"55","title":"Contact","alias":"contact","introtext":"<div>\\r\\n<div class=\\"map-contact\\"><iframe style=\\"border: 0;\\" src=\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3960.6444411802963!2d79.86342632753218!3d6.933031103875875!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae25905bf4b334f%3A0x2ff96db40d2d45ad!2sDepartment+of+Motor+Traffic!5e0!3m2!1sen!2s!4v1451236549040\\" width=\\"100%\\" height=\\"322\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/div>\\r\\n<div class=\\"contact-details\\">\\r\\n<div class=\\"contact-type first\\"><img src=\\"images\\/contactIcon\\/home.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/> The Secretariat,<br \\/> 1st Floor,<br \\/> Colombo 01.<\\/div>\\r\\n<div class=\\"contact-type\\"><img src=\\"images\\/contactIcon\\/4n.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/> +94-11-2484612<br \\/> +94-11-2484613<\\/div>\\r\\n<div class=\\"contact-type\\"><img src=\\"images\\/contactIcon\\/fax2.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/> +94-11-2448063<br \\/> +94-11-2431620<\\/div>\\r\\n<div class=\\"contact-type\\"><img src=\\"images\\/contactIcon\\/mail.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/>\\u00a0 <span class=\\"our-email\\">dgnp@npd.treasury.gov.lk<\\/span><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<table class=\\"contact-more\\" border=\\"1\\">\\r\\n<tbody>\\r\\n<tr><th>\\u00a0<\\/th><th>Position<\\/th><th>Name<\\/th><th>Phone<\\/th><th>Res<\\/th><\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"4\\">Department of National Planning<\\/td>\\r\\n<td>Director General<\\/td>\\r\\n<td>Mr. S.S.Mudalige<\\/td>\\r\\n<td>2484593\\/2484566<\\/td>\\r\\n<td>2719590<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Additional Director General<br \\/>(Public Investment &amp; Diagnostic Review)<\\/td>\\r\\n<td>Mrs. M.Gangatharan<\\/td>\\r\\n<td>2484576<\\/td>\\r\\n<td>2584881<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Additional Director General<br \\/>(Policy Development )<\\/td>\\r\\n<td>Mrs.J.M.S.D. Rathnayaka<\\/td>\\r\\n<td>2484586<\\/td>\\r\\n<td>2608447<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Additional Director General<br \\/>(Project Review )<\\/td>\\r\\n<td>Mr.K.D.S.R.Perera<\\/td>\\r\\n<td>2484567<\\/td>\\r\\n<td>0342221396<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"5\\">Agriculture, Irrigation, Land, Livestock and Fisheries<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Mr. Rohitha Wickramarathna<\\/td>\\r\\n<td>2484608<\\/td>\\r\\n<td>0382243501<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Agriculture)<\\/td>\\r\\n<td>Ms: T.Y.L. Munasinghe<\\/td>\\r\\n<td>2484920<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Irrigation &amp; Land)<\\/td>\\r\\n<td>Mr: P.M.S. Jayathilaka<\\/td>\\r\\n<td>2484860<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Fisheries &amp; Livestock)<\\/td>\\r\\n<td>Mrs: H.K.T. Gunawardhana<\\/td>\\r\\n<td>2484585<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Plantation)<\\/td>\\r\\n<td>Mrs: M.A. Sudarshani Dabarera<\\/td>\\r\\n<td>2484927<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"3\\">Regional Development &amp; Social Protection<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Mr. T.M.J.Bandara<\\/td>\\r\\n<td>2484573<\\/td>\\r\\n<td>0372232893<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Social Protection)<\\/td>\\r\\n<td>Mrs: D.A.. Niharepola<\\/td>\\r\\n<td>2484928<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(regional Development)<\\/td>\\r\\n<td>Mrs: Chandaniee Ramasinghe<\\/td>\\r\\n<td>2484590<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"3\\">Health, Indigenous Medicine, Sports, Culture, Religion and National Integration<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Mrs. C.Senayake<\\/td>\\r\\n<td>2484915<\\/td>\\r\\n<td>3184030<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Helth,Indigenous Medicine)<\\/td>\\r\\n<td>Mrs: Dilani Peiris<\\/td>\\r\\n<td>2484908<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Culture, Religion&amp; National Inntegration)<\\/td>\\r\\n<td>Mrs: D.H.R.D.Wijewardena<\\/td>\\r\\n<td>2484609<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"8\\">Infrastructure Development &amp; Environment<\\/td>\\r\\n<td>Director<br \\/>( Road,Ports &amp; Transport )<\\/td>\\r\\n<td>Mr. Mallawarachchi<\\/td>\\r\\n<td>2484597<\\/td>\\r\\n<td>0342281079<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Director<br \\/>( Water,Housing and Urban Development)<\\/td>\\r\\n<td>Mr. M.F.A. Mubarak<\\/td>\\r\\n<td>2484875<\\/td>\\r\\n<td>2589629<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Roads &amp; Transport)<\\/td>\\r\\n<td>Mr: Priyankara Jayarathna<\\/td>\\r\\n<td>2484921<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Port &amp; Aviation)<\\/td>\\r\\n<td>Mrs D.N.Manorathne<\\/td>\\r\\n<td>2484969<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Housing &amp; Urban Development)<\\/td>\\r\\n<td>Miss.U.A.W. L. Sumanasekara<\\/td>\\r\\n<td>2484804<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Water Supply)<\\/td>\\r\\n<td>Mrs: K.A.H.K.Perera<\\/td>\\r\\n<td>2484872<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Environment)<\\/td>\\r\\n<td>Mr: K.B.S.S.Fernando<\\/td>\\r\\n<td>2484562<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Waster Management)<\\/td>\\r\\n<td>Mrs. W.M.Hansani<\\/td>\\r\\n<td>2484977<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"4\\">Education, Higher Education &amp; Skills Development \\/Human Capital Development<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Mr. T.A.D.D.Pramarathne<\\/td>\\r\\n<td>2484922<\\/td>\\r\\n<td>2705946<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Skills Development)<\\/td>\\r\\n<td>Mrs: Dilrukshi Samarakoon<\\/td>\\r\\n<td>2484783<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Education)<\\/td>\\r\\n<td>Ms: P.A.N.Abeysekara<\\/td>\\r\\n<td>2484925<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Higher Education &amp; Technology &amp; Reserch)<\\/td>\\r\\n<td>Mrs: K.D.C.Thamarasee<\\/td>\\r\\n<td>2484575<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Public Management &amp; Environment<\\/td>\\r\\n<td>Assistant Director<br \\/>(Public Management)<\\/td>\\r\\n<td>Mrs: P.H.Chandima<\\/td>\\r\\n<td>2484592<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"2\\">Macro Economic Planning<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Mr. T.M.J.Bandara<\\/td>\\r\\n<td>2484573<\\/td>\\r\\n<td>0372232893<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Macro Planning)<\\/td>\\r\\n<td>Mr. L.H.M.B.R.B.Lansakara<\\/td>\\r\\n<td>2484852<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"3\\">Industries &amp; Trade<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Mrs. A.K. Gunasekara<\\/td>\\r\\n<td>2484591<\\/td>\\r\\n<td>2923124<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Industry &amp; Trade)<\\/td>\\r\\n<td>Mr: R.D.A.Maithreerathna<\\/td>\\r\\n<td>2484784<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Tourism)<\\/td>\\r\\n<td>Mrs: W.L.P. Ferando<\\/td>\\r\\n<td>2484924<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"3\\">Power &amp; Energy and Decontralized Budget<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Mrs. T.Prassanth<\\/td>\\r\\n<td>2484613<\\/td>\\r\\n<td>2726073<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Power &amp; Energy)<\\/td>\\r\\n<td>Mr: R.K.L.Jagoda<\\/td>\\r\\n<td>2484866<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Decontralized Budget )<\\/td>\\r\\n<td>Mrs: Chandaniee Ramasinghe<\\/td>\\r\\n<td>2484590<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"2\\">Administration Branch<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Mrs. T. Prassanth<\\/td>\\r\\n<td>2484613<\\/td>\\r\\n<td>2726073<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Chf Management Asst<\\/td>\\r\\n<td>Mrs.K.G.P Damayanthi<\\/td>\\r\\n<td>2484612<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Accounts Branch<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Miss. N.Wijeweera<\\/td>\\r\\n<td>2484610<\\/td>\\r\\n<td>2896152<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"2\\">Development Information Center<\\/td>\\r\\n<td>Assistant Director<\\/td>\\r\\n<td>Mrs. D.H.R.D.Wijewardana<\\/td>\\r\\n<td>2484609<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Devpt Ofcr<\\/td>\\r\\n<td>Mrs.Kanchana Jayasekara<\\/td>\\r\\n<td>2484931<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>","fulltext":"","state":1,"catid":"2","created":"2015-12-22 05:59:45","created_by":"327","created_by_alias":"","modified":"2015-12-28 17:39:21","modified_by":"327","checked_out":"327","checked_out_time":"2015-12-28 17:27:57","publish_up":"2015-12-22 05:59:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":62,"ordering":"6","metakey":"","metadesc":"","access":"1","hits":"126","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(95, 2, 1, '', '2015-12-28 17:42:14', 327, 9699, '2817511d611dbb575f116222446051b8894c378f', '{"id":2,"asset_id":"55","title":"Contact","alias":"contact","introtext":"<div>\\r\\n<div class=\\"map-contact\\"><iframe style=\\"border: 0;\\" src=\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3960.6444411802963!2d79.86342632753218!3d6.933031103875875!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae25905bf4b334f%3A0x2ff96db40d2d45ad!2sDepartment+of+Motor+Traffic!5e0!3m2!1sen!2s!4v1451236549040\\" width=\\"100%\\" height=\\"322\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/div>\\r\\n<div class=\\"contact-details\\">\\r\\n<div class=\\"contact-type first\\"><img src=\\"images\\/contactIcon\\/home.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/> The Secretariat,<br \\/> 1st Floor,<br \\/> Colombo 01.<\\/div>\\r\\n<div class=\\"contact-type\\"><img src=\\"images\\/contactIcon\\/4n.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/> +94-11-2484612<br \\/> +94-11-2484613<\\/div>\\r\\n<div class=\\"contact-type\\"><img src=\\"images\\/contactIcon\\/fax2.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/> +94-11-2448063<br \\/> +94-11-2431620<\\/div>\\r\\n<div class=\\"contact-type last\\"><img src=\\"images\\/contactIcon\\/mail.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/>\\u00a0 <span class=\\"our-email\\">dgnp@npd.treasury.gov.lk<\\/span><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<table class=\\"contact-more\\" border=\\"1\\">\\r\\n<tbody>\\r\\n<tr><th>\\u00a0<\\/th><th>Position<\\/th><th>Name<\\/th><th>Phone<\\/th><th>Res<\\/th><\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"4\\">Department of National Planning<\\/td>\\r\\n<td>Director General<\\/td>\\r\\n<td>Mr. S.S.Mudalige<\\/td>\\r\\n<td>2484593\\/2484566<\\/td>\\r\\n<td>2719590<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Additional Director General<br \\/>(Public Investment &amp; Diagnostic Review)<\\/td>\\r\\n<td>Mrs. M.Gangatharan<\\/td>\\r\\n<td>2484576<\\/td>\\r\\n<td>2584881<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Additional Director General<br \\/>(Policy Development )<\\/td>\\r\\n<td>Mrs.J.M.S.D. Rathnayaka<\\/td>\\r\\n<td>2484586<\\/td>\\r\\n<td>2608447<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Additional Director General<br \\/>(Project Review )<\\/td>\\r\\n<td>Mr.K.D.S.R.Perera<\\/td>\\r\\n<td>2484567<\\/td>\\r\\n<td>0342221396<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"5\\">Agriculture, Irrigation, Land, Livestock and Fisheries<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Mr. Rohitha Wickramarathna<\\/td>\\r\\n<td>2484608<\\/td>\\r\\n<td>0382243501<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Agriculture)<\\/td>\\r\\n<td>Ms: T.Y.L. Munasinghe<\\/td>\\r\\n<td>2484920<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Irrigation &amp; Land)<\\/td>\\r\\n<td>Mr: P.M.S. Jayathilaka<\\/td>\\r\\n<td>2484860<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Fisheries &amp; Livestock)<\\/td>\\r\\n<td>Mrs: H.K.T. Gunawardhana<\\/td>\\r\\n<td>2484585<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Plantation)<\\/td>\\r\\n<td>Mrs: M.A. Sudarshani Dabarera<\\/td>\\r\\n<td>2484927<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"3\\">Regional Development &amp; Social Protection<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Mr. T.M.J.Bandara<\\/td>\\r\\n<td>2484573<\\/td>\\r\\n<td>0372232893<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Social Protection)<\\/td>\\r\\n<td>Mrs: D.A.. Niharepola<\\/td>\\r\\n<td>2484928<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(regional Development)<\\/td>\\r\\n<td>Mrs: Chandaniee Ramasinghe<\\/td>\\r\\n<td>2484590<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"3\\">Health, Indigenous Medicine, Sports, Culture, Religion and National Integration<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Mrs. C.Senayake<\\/td>\\r\\n<td>2484915<\\/td>\\r\\n<td>3184030<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Helth,Indigenous Medicine)<\\/td>\\r\\n<td>Mrs: Dilani Peiris<\\/td>\\r\\n<td>2484908<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Culture, Religion&amp; National Inntegration)<\\/td>\\r\\n<td>Mrs: D.H.R.D.Wijewardena<\\/td>\\r\\n<td>2484609<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"8\\">Infrastructure Development &amp; Environment<\\/td>\\r\\n<td>Director<br \\/>( Road,Ports &amp; Transport )<\\/td>\\r\\n<td>Mr. Mallawarachchi<\\/td>\\r\\n<td>2484597<\\/td>\\r\\n<td>0342281079<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Director<br \\/>( Water,Housing and Urban Development)<\\/td>\\r\\n<td>Mr. M.F.A. Mubarak<\\/td>\\r\\n<td>2484875<\\/td>\\r\\n<td>2589629<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Roads &amp; Transport)<\\/td>\\r\\n<td>Mr: Priyankara Jayarathna<\\/td>\\r\\n<td>2484921<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Port &amp; Aviation)<\\/td>\\r\\n<td>Mrs D.N.Manorathne<\\/td>\\r\\n<td>2484969<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Housing &amp; Urban Development)<\\/td>\\r\\n<td>Miss.U.A.W. L. Sumanasekara<\\/td>\\r\\n<td>2484804<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Water Supply)<\\/td>\\r\\n<td>Mrs: K.A.H.K.Perera<\\/td>\\r\\n<td>2484872<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Environment)<\\/td>\\r\\n<td>Mr: K.B.S.S.Fernando<\\/td>\\r\\n<td>2484562<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Waster Management)<\\/td>\\r\\n<td>Mrs. W.M.Hansani<\\/td>\\r\\n<td>2484977<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"4\\">Education, Higher Education &amp; Skills Development \\/Human Capital Development<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Mr. T.A.D.D.Pramarathne<\\/td>\\r\\n<td>2484922<\\/td>\\r\\n<td>2705946<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Skills Development)<\\/td>\\r\\n<td>Mrs: Dilrukshi Samarakoon<\\/td>\\r\\n<td>2484783<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Education)<\\/td>\\r\\n<td>Ms: P.A.N.Abeysekara<\\/td>\\r\\n<td>2484925<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Higher Education &amp; Technology &amp; Reserch)<\\/td>\\r\\n<td>Mrs: K.D.C.Thamarasee<\\/td>\\r\\n<td>2484575<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Public Management &amp; Environment<\\/td>\\r\\n<td>Assistant Director<br \\/>(Public Management)<\\/td>\\r\\n<td>Mrs: P.H.Chandima<\\/td>\\r\\n<td>2484592<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"2\\">Macro Economic Planning<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Mr. T.M.J.Bandara<\\/td>\\r\\n<td>2484573<\\/td>\\r\\n<td>0372232893<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Macro Planning)<\\/td>\\r\\n<td>Mr. L.H.M.B.R.B.Lansakara<\\/td>\\r\\n<td>2484852<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"3\\">Industries &amp; Trade<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Mrs. A.K. Gunasekara<\\/td>\\r\\n<td>2484591<\\/td>\\r\\n<td>2923124<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Industry &amp; Trade)<\\/td>\\r\\n<td>Mr: R.D.A.Maithreerathna<\\/td>\\r\\n<td>2484784<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Tourism)<\\/td>\\r\\n<td>Mrs: W.L.P. Ferando<\\/td>\\r\\n<td>2484924<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"3\\">Power &amp; Energy and Decontralized Budget<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Mrs. T.Prassanth<\\/td>\\r\\n<td>2484613<\\/td>\\r\\n<td>2726073<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Power &amp; Energy)<\\/td>\\r\\n<td>Mr: R.K.L.Jagoda<\\/td>\\r\\n<td>2484866<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Decontralized Budget )<\\/td>\\r\\n<td>Mrs: Chandaniee Ramasinghe<\\/td>\\r\\n<td>2484590<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"2\\">Administration Branch<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Mrs. T. Prassanth<\\/td>\\r\\n<td>2484613<\\/td>\\r\\n<td>2726073<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Chf Management Asst<\\/td>\\r\\n<td>Mrs.K.G.P Damayanthi<\\/td>\\r\\n<td>2484612<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Accounts Branch<\\/td>\\r\\n<td>Director<\\/td>\\r\\n<td>Miss. N.Wijeweera<\\/td>\\r\\n<td>2484610<\\/td>\\r\\n<td>2896152<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td rowspan=\\"2\\">Development Information Center<\\/td>\\r\\n<td>Assistant Director<\\/td>\\r\\n<td>Mrs. D.H.R.D.Wijewardana<\\/td>\\r\\n<td>2484609<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Devpt Ofcr<\\/td>\\r\\n<td>Mrs.Kanchana Jayasekara<\\/td>\\r\\n<td>2484931<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>","fulltext":"","state":1,"catid":"2","created":"2015-12-22 05:59:45","created_by":"327","created_by_alias":"","modified":"2015-12-28 17:42:14","modified_by":"327","checked_out":"327","checked_out_time":"2015-12-28 17:39:21","publish_up":"2015-12-22 05:59:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":63,"ordering":"6","metakey":"","metadesc":"","access":"1","hits":"129","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(96, 2, 1, '', '2015-12-29 09:04:24', 327, 9667, 'ceb5713c0bb8978d42b8e0bded13908b8459f491', '{"id":2,"asset_id":"55","title":"Contact","alias":"contact","introtext":"<div>\\r\\n<div class=\\"map-contact\\"><iframe style=\\"border: 0;\\" src=\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3960.6444411802963!2d79.86342632753218!3d6.933031103875875!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae25905bf4b334f%3A0x2ff96db40d2d45ad!2sDepartment+of+Motor+Traffic!5e0!3m2!1sen!2s!4v1451236549040\\" width=\\"100%\\" height=\\"322\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/div>\\r\\n<div class=\\"contact-details\\">\\r\\n<div class=\\"contact-type first\\"><img src=\\"images\\/contactIcon\\/home.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/> The Secretariat,<br \\/> 1st Floor,<br \\/> Colombo 01.<\\/div>\\r\\n<div class=\\"contact-type\\"><img src=\\"images\\/contactIcon\\/4n.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/> +94-11-2484612<br \\/> +94-11-2484613<\\/div>\\r\\n<div class=\\"contact-type\\"><img src=\\"images\\/contactIcon\\/fax2.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/> +94-11-2448063<br \\/> +94-11-2431620<\\/div>\\r\\n<div class=\\"contact-type last\\"><img src=\\"images\\/contactIcon\\/mail.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/> <span class=\\"our-email\\">dgnp@npd.treasury.gov.lk<\\/span><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<p>PositionNamePhoneRes<\\/p>\\r\\n<table class=\\"contact-more\\" border=\\"1\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td>Department of National Planning<br \\/>Director General<\\/td>\\r\\n<td>Mr. S.S.Mudalige<\\/td>\\r\\n<td>+94112484593\\/+94112484566<\\/td>\\r\\n<td>+94112719590<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Additional Director General<br \\/>(Public Investment &amp; Diagnostic Review)<\\/td>\\r\\n<td>Mrs. M.Gangatharan<\\/td>\\r\\n<td>+94112484576<\\/td>\\r\\n<td>+94112584881<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Additional Director General<br \\/>(Policy Development )<\\/td>\\r\\n<td>Mrs.J.M.S.D. Rathnayaka<\\/td>\\r\\n<td>+94112484586<\\/td>\\r\\n<td>+94112608447<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Additional Director General<br \\/>(Project Review )<\\/td>\\r\\n<td>Mr.K.D.S.R.Perera<\\/td>\\r\\n<td>+94112484567<\\/td>\\r\\n<td>+94342221396<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Agriculture, Irrigation, Land, Livestock and Fisheries<br \\/>Director<\\/td>\\r\\n<td>Mr. Rohitha Wickramarathna<\\/td>\\r\\n<td>+94112484608<\\/td>\\r\\n<td>+94382243501<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Agriculture)<\\/td>\\r\\n<td>Ms: T.Y.L. Munasinghe<\\/td>\\r\\n<td>+94112484920<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Irrigation &amp; Land)<\\/td>\\r\\n<td>Mr: P.M.S. Jayathilaka<\\/td>\\r\\n<td>+94112484860<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Fisheries &amp; Livestock)<\\/td>\\r\\n<td>Mrs: H.K.T. Gunawardhana<\\/td>\\r\\n<td>+94112484585<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Plantation)<\\/td>\\r\\n<td>Mrs: M.A. Sudarshani Dabarera<\\/td>\\r\\n<td>+94112484927<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Regional Development &amp; Social Protection<br \\/>Director<\\/td>\\r\\n<td>Mr. T.M.J.Bandara<\\/td>\\r\\n<td>+94112484573<\\/td>\\r\\n<td>+94372232893<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Social Protection)<\\/td>\\r\\n<td>Mrs: D.A.. Niharepola<\\/td>\\r\\n<td>+94112484928<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(regional Development)<\\/td>\\r\\n<td>Mrs: Chandaniee Ramasinghe<\\/td>\\r\\n<td>+94112484590<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Health, Indigenous Medicine, Sports, Culture, Religion and National Integration<br \\/>Director<\\/td>\\r\\n<td>Mrs. C.Senayake<\\/td>\\r\\n<td>+94112484915<\\/td>\\r\\n<td>+94113184030<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Helth,Indigenous Medicine)<\\/td>\\r\\n<td>Mrs: Dilani Peiris<\\/td>\\r\\n<td>+94112484908<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Culture, Religion&amp; National Inntegration)<\\/td>\\r\\n<td>Mrs: D.H.R.D.Wijewardena<\\/td>\\r\\n<td>+94112484609<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Infrastructure Development &amp; Environment<br \\/>Director<br \\/>( Road,Ports &amp; Transport )<\\/td>\\r\\n<td>Mr. Mallawarachchi<\\/td>\\r\\n<td>+94112484597<\\/td>\\r\\n<td>+94342281079<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Director<br \\/>( Water,Housing and Urban Development)<\\/td>\\r\\n<td>Mr. M.F.A. Mubarak<\\/td>\\r\\n<td>+94112484875<\\/td>\\r\\n<td>+94112589629<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Roads &amp; Transport)<\\/td>\\r\\n<td>Mr: Priyankara Jayarathna<\\/td>\\r\\n<td>+94112484921<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Port &amp; Aviation)<\\/td>\\r\\n<td>Mrs D.N.Manorathne<\\/td>\\r\\n<td>+94112484969<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Housing &amp; Urban Development)<\\/td>\\r\\n<td>Miss.U.A.W. L. Sumanasekara<\\/td>\\r\\n<td>+94112484804<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Water Supply)<\\/td>\\r\\n<td>Mrs: K.A.H.K.Perera<\\/td>\\r\\n<td>+94112484872<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Environment)<\\/td>\\r\\n<td>Mr: K.B.S.S.Fernando<\\/td>\\r\\n<td>+94112484562<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Waster Management)<\\/td>\\r\\n<td>Mrs. W.M.Hansani<\\/td>\\r\\n<td>+94112484977<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Education, Higher Education &amp; Skills Development \\/Human Capital Development<br \\/>Director<\\/td>\\r\\n<td>Mr. T.A.D.D.Pramarathne<\\/td>\\r\\n<td>+94112484922<\\/td>\\r\\n<td>+94112705946<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Skills Development)<\\/td>\\r\\n<td>Mrs: Dilrukshi Samarakoon<\\/td>\\r\\n<td>+94112484783<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Education)<\\/td>\\r\\n<td>Ms: P.A.N.Abeysekara<\\/td>\\r\\n<td>+94112484925<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Higher Education &amp; Technology &amp; Reserch)<\\/td>\\r\\n<td>Mrs: K.D.C.Thamarasee<\\/td>\\r\\n<td>+94112484575<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Public Management &amp; Environment<\\/td>\\r\\n<td>Assistant Director<br \\/>(Public Management)<\\/td>\\r\\n<td>Mrs: P.H.Chandima<\\/td>\\r\\n<td>+94112484592<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Macro Economic Planning<br \\/>Director<\\/td>\\r\\n<td>Mr. T.M.J.Bandara<\\/td>\\r\\n<td>+94112484573<\\/td>\\r\\n<td>+94372232893<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Macro Planning)<\\/td>\\r\\n<td>Mr. L.H.M.B.R.B.Lansakara<\\/td>\\r\\n<td>+94112484852<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Industries &amp; Trade<br \\/>Director<\\/td>\\r\\n<td>Mrs. A.K. Gunasekara<\\/td>\\r\\n<td>+94112484591<\\/td>\\r\\n<td>+94112923124<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Industry &amp; Trade)<\\/td>\\r\\n<td>Mr: R.D.A.Maithreerathna<\\/td>\\r\\n<td>+94112484784<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Tourism)<\\/td>\\r\\n<td>Mrs: W.L.P. Ferando<\\/td>\\r\\n<td>+94112484924<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Power &amp; Energy and Decontralized Budget<br \\/>Director<\\/td>\\r\\n<td>Mrs. T.Prassanth<\\/td>\\r\\n<td>+94112484613<\\/td>\\r\\n<td>+94112726073<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Power &amp; Energy)<\\/td>\\r\\n<td>Mr: R.K.L.Jagoda<\\/td>\\r\\n<td>+94112484866<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Decontralized Budget )<\\/td>\\r\\n<td>Mrs: Chandaniee Ramasinghe<\\/td>\\r\\n<td>+94112484590<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Administration Branch<br \\/>Director<\\/td>\\r\\n<td>Mrs. T. Prassanth<\\/td>\\r\\n<td>+94112484613<\\/td>\\r\\n<td>+94112726073<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Chf Management Asst<\\/td>\\r\\n<td>Mrs.K.G.P Damayanthi<\\/td>\\r\\n<td>+94112484612<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Accounts Branch<br \\/>Director<\\/td>\\r\\n<td>Miss. N.Wijeweera<\\/td>\\r\\n<td>+94112484610<\\/td>\\r\\n<td>+94112896152<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Development Information Center<br \\/>Assistant Director<\\/td>\\r\\n<td>Mrs. D.H.R.D.Wijewardana<\\/td>\\r\\n<td>+94112484609<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Devpt Ofcr<\\/td>\\r\\n<td>Mrs.Kanchana Jayasekara<\\/td>\\r\\n<td>+94112484931<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>","fulltext":"","state":1,"catid":"2","created":"2015-12-22 05:59:45","created_by":"327","created_by_alias":"","modified":"2015-12-29 09:04:24","modified_by":"327","checked_out":"327","checked_out_time":"2015-12-29 08:53:10","publish_up":"2015-12-22 05:59:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":64,"ordering":"6","metakey":"","metadesc":"","access":"1","hits":"145","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `c39g0_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(97, 2, 1, '', '2015-12-29 09:06:31', 327, 9709, '7108d5b3f044c492811ed19c6e452bb1c8694ccd', '{"id":2,"asset_id":"55","title":"Contact","alias":"contact","introtext":"<div>\\r\\n<div class=\\"map-contact\\"><iframe style=\\"border: 0;\\" src=\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3960.6444411802963!2d79.86342632753218!3d6.933031103875875!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae25905bf4b334f%3A0x2ff96db40d2d45ad!2sDepartment+of+Motor+Traffic!5e0!3m2!1sen!2s!4v1451236549040\\" width=\\"100%\\" height=\\"322\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/div>\\r\\n<div class=\\"contact-details\\">\\r\\n<div class=\\"contact-type first\\"><img src=\\"images\\/contactIcon\\/home.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/> The Secretariat,<br \\/> 1st Floor,<br \\/> Colombo 01.<\\/div>\\r\\n<div class=\\"contact-type\\"><img src=\\"images\\/contactIcon\\/4n.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/> +94-11-2484612<br \\/> +94-11-2484613<\\/div>\\r\\n<div class=\\"contact-type\\"><img src=\\"images\\/contactIcon\\/fax2.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/> +94-11-2448063<br \\/> +94-11-2431620<\\/div>\\r\\n<div class=\\"contact-type last\\"><img src=\\"images\\/contactIcon\\/mail.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/> <span class=\\"our-email\\">dgnp@npd.treasury.gov.lk<\\/span><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<table class=\\"contact-more\\" border=\\"1\\">\\r\\n<tbody>\\r\\n<tr><th>Position<\\/th><th>Name<\\/th><th>Phone<\\/th><th>Res<\\/th><\\/tr>\\r\\n<tr>\\r\\n<td>Department of National Planning<br \\/>Director General<\\/td>\\r\\n<td>Mr. S.S.Mudalige<\\/td>\\r\\n<td>+94112484593\\/+94112484566<\\/td>\\r\\n<td>+94112719590<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Additional Director General<br \\/>(Public Investment &amp; Diagnostic Review)<\\/td>\\r\\n<td>Mrs. M.Gangatharan<\\/td>\\r\\n<td>+94112484576<\\/td>\\r\\n<td>+94112584881<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Additional Director General<br \\/>(Policy Development )<\\/td>\\r\\n<td>Mrs.J.M.S.D. Rathnayaka<\\/td>\\r\\n<td>+94112484586<\\/td>\\r\\n<td>+94112608447<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Additional Director General<br \\/>(Project Review )<\\/td>\\r\\n<td>Mr.K.D.S.R.Perera<\\/td>\\r\\n<td>+94112484567<\\/td>\\r\\n<td>+94342221396<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Agriculture, Irrigation, Land, Livestock and Fisheries<br \\/>Director<\\/td>\\r\\n<td>Mr. Rohitha Wickramarathna<\\/td>\\r\\n<td>+94112484608<\\/td>\\r\\n<td>+94382243501<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Agriculture)<\\/td>\\r\\n<td>Ms: T.Y.L. Munasinghe<\\/td>\\r\\n<td>+94112484920<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Irrigation &amp; Land)<\\/td>\\r\\n<td>Mr: P.M.S. Jayathilaka<\\/td>\\r\\n<td>+94112484860<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Fisheries &amp; Livestock)<\\/td>\\r\\n<td>Mrs: H.K.T. Gunawardhana<\\/td>\\r\\n<td>+94112484585<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Plantation)<\\/td>\\r\\n<td>Mrs: M.A. Sudarshani Dabarera<\\/td>\\r\\n<td>+94112484927<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Regional Development &amp; Social Protection<br \\/>Director<\\/td>\\r\\n<td>Mr. T.M.J.Bandara<\\/td>\\r\\n<td>+94112484573<\\/td>\\r\\n<td>+94372232893<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Social Protection)<\\/td>\\r\\n<td>Mrs: D.A.. Niharepola<\\/td>\\r\\n<td>+94112484928<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(regional Development)<\\/td>\\r\\n<td>Mrs: Chandaniee Ramasinghe<\\/td>\\r\\n<td>+94112484590<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Health, Indigenous Medicine, Sports, Culture, Religion and National Integration<br \\/>Director<\\/td>\\r\\n<td>Mrs. C.Senayake<\\/td>\\r\\n<td>+94112484915<\\/td>\\r\\n<td>+94113184030<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Helth,Indigenous Medicine)<\\/td>\\r\\n<td>Mrs: Dilani Peiris<\\/td>\\r\\n<td>+94112484908<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Culture, Religion&amp; National Inntegration)<\\/td>\\r\\n<td>Mrs: D.H.R.D.Wijewardena<\\/td>\\r\\n<td>+94112484609<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Infrastructure Development &amp; Environment<br \\/>Director<br \\/>( Road,Ports &amp; Transport )<\\/td>\\r\\n<td>Mr. Mallawarachchi<\\/td>\\r\\n<td>+94112484597<\\/td>\\r\\n<td>+94342281079<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Director<br \\/>( Water,Housing and Urban Development)<\\/td>\\r\\n<td>Mr. M.F.A. Mubarak<\\/td>\\r\\n<td>+94112484875<\\/td>\\r\\n<td>+94112589629<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Roads &amp; Transport)<\\/td>\\r\\n<td>Mr: Priyankara Jayarathna<\\/td>\\r\\n<td>+94112484921<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Port &amp; Aviation)<\\/td>\\r\\n<td>Mrs D.N.Manorathne<\\/td>\\r\\n<td>+94112484969<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Housing &amp; Urban Development)<\\/td>\\r\\n<td>Miss.U.A.W. L. Sumanasekara<\\/td>\\r\\n<td>+94112484804<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Water Supply)<\\/td>\\r\\n<td>Mrs: K.A.H.K.Perera<\\/td>\\r\\n<td>+94112484872<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Environment)<\\/td>\\r\\n<td>Mr: K.B.S.S.Fernando<\\/td>\\r\\n<td>+94112484562<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Waster Management)<\\/td>\\r\\n<td>Mrs. W.M.Hansani<\\/td>\\r\\n<td>+94112484977<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Education, Higher Education &amp; Skills Development \\/Human Capital Development<br \\/>Director<\\/td>\\r\\n<td>Mr. T.A.D.D.Pramarathne<\\/td>\\r\\n<td>+94112484922<\\/td>\\r\\n<td>+94112705946<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Skills Development)<\\/td>\\r\\n<td>Mrs: Dilrukshi Samarakoon<\\/td>\\r\\n<td>+94112484783<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Education)<\\/td>\\r\\n<td>Ms: P.A.N.Abeysekara<\\/td>\\r\\n<td>+94112484925<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Higher Education &amp; Technology &amp; Reserch)<\\/td>\\r\\n<td>Mrs: K.D.C.Thamarasee<\\/td>\\r\\n<td>+94112484575<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Public Management &amp; Environment<\\/td>\\r\\n<td>Assistant Director<br \\/>(Public Management)<\\/td>\\r\\n<td>Mrs: P.H.Chandima<\\/td>\\r\\n<td>+94112484592<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Macro Economic Planning<br \\/>Director<\\/td>\\r\\n<td>Mr. T.M.J.Bandara<\\/td>\\r\\n<td>+94112484573<\\/td>\\r\\n<td>+94372232893<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Macro Planning)<\\/td>\\r\\n<td>Mr. L.H.M.B.R.B.Lansakara<\\/td>\\r\\n<td>+94112484852<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Industries &amp; Trade<br \\/>Director<\\/td>\\r\\n<td>Mrs. A.K. Gunasekara<\\/td>\\r\\n<td>+94112484591<\\/td>\\r\\n<td>+94112923124<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Industry &amp; Trade)<\\/td>\\r\\n<td>Mr: R.D.A.Maithreerathna<\\/td>\\r\\n<td>+94112484784<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Tourism)<\\/td>\\r\\n<td>Mrs: W.L.P. Ferando<\\/td>\\r\\n<td>+94112484924<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Power &amp; Energy and Decontralized Budget<br \\/>Director<\\/td>\\r\\n<td>Mrs. T.Prassanth<\\/td>\\r\\n<td>+94112484613<\\/td>\\r\\n<td>+94112726073<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Power &amp; Energy)<\\/td>\\r\\n<td>Mr: R.K.L.Jagoda<\\/td>\\r\\n<td>+94112484866<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Decontralized Budget )<\\/td>\\r\\n<td>Mrs: Chandaniee Ramasinghe<\\/td>\\r\\n<td>+94112484590<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Administration Branch<br \\/>Director<\\/td>\\r\\n<td>Mrs. T. Prassanth<\\/td>\\r\\n<td>+94112484613<\\/td>\\r\\n<td>+94112726073<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Chf Management Asst<\\/td>\\r\\n<td>Mrs.K.G.P Damayanthi<\\/td>\\r\\n<td>+94112484612<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Accounts Branch<br \\/>Director<\\/td>\\r\\n<td>Miss. N.Wijeweera<\\/td>\\r\\n<td>+94112484610<\\/td>\\r\\n<td>+94112896152<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Development Information Center<br \\/>Assistant Director<\\/td>\\r\\n<td>Mrs. D.H.R.D.Wijewardana<\\/td>\\r\\n<td>+94112484609<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Devpt Ofcr<\\/td>\\r\\n<td>Mrs.Kanchana Jayasekara<\\/td>\\r\\n<td>+94112484931<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>","fulltext":"","state":1,"catid":"2","created":"2015-12-22 05:59:45","created_by":"327","created_by_alias":"","modified":"2015-12-29 09:06:31","modified_by":"327","checked_out":"327","checked_out_time":"2015-12-29 09:05:39","publish_up":"2015-12-22 05:59:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":66,"ordering":"6","metakey":"","metadesc":"","access":"1","hits":"148","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(98, 2, 1, '', '2015-12-29 09:11:01', 327, 9702, '25248dfaae74a155a49179cf8dd7b5544a293922', '{"id":2,"asset_id":"55","title":"Contact","alias":"contact","introtext":"<div>\\r\\n<div class=\\"map-contact\\"><iframe style=\\"border: 0;\\" src=\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3960.6444411802963!2d79.86342632753218!3d6.933031103875875!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae25905bf4b334f%3A0x2ff96db40d2d45ad!2sDepartment+of+Motor+Traffic!5e0!3m2!1sen!2s!4v1451236549040\\" width=\\"100%\\" height=\\"322\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/div>\\r\\n<div class=\\"contact-details\\">\\r\\n<div class=\\"contact-type first\\"><img src=\\"images\\/contactIcon\\/home.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/> The Secretariat,<br \\/> 1st Floor,<br \\/> Colombo 01.<\\/div>\\r\\n<div class=\\"contact-type\\"><img src=\\"images\\/contactIcon\\/4n.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/> +94-11-2484612<br \\/> +94-11-2484613<\\/div>\\r\\n<div class=\\"contact-type\\"><img src=\\"images\\/contactIcon\\/fax2.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/> +94-11-2448063<br \\/> +94-11-2431620<\\/div>\\r\\n<div class=\\"contact-type last\\"><img src=\\"images\\/contactIcon\\/mail.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/> <span class=\\"our-email\\">dgnp@npd.treasury.gov.lk<\\/span><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<table class=\\"contact-more\\" border=\\"1\\">\\r\\n<tbody>\\r\\n<tr><th>Position<\\/th><th>Name<\\/th><th>Phone<\\/th><th>Res<\\/th><\\/tr>\\r\\n<tr>\\r\\n<td>Department of National Planning<br \\/>Director General<\\/td>\\r\\n<td>Mr. S.S.Mudalige<\\/td>\\r\\n<td>+94112484593\\/+94112484566<\\/td>\\r\\n<td>+94112719590<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Additional Director General<br \\/>(Public Investment &amp; Diagnostic Review)<\\/td>\\r\\n<td>Mrs. M.Gangatharan<\\/td>\\r\\n<td>+94112484576<\\/td>\\r\\n<td>+94112584881<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Additional Director General<br \\/>(Policy Development )<\\/td>\\r\\n<td>Mrs.J.M.S.D. Rathnayaka<\\/td>\\r\\n<td>+94112484586<\\/td>\\r\\n<td>+94112608447<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Additional Director General<br \\/>(Project Review )<\\/td>\\r\\n<td>Mr.K.D.S.R.Perera<\\/td>\\r\\n<td>+94112484567<\\/td>\\r\\n<td>+94342221396<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Agriculture, Irrigation, Land, Livestock and Fisheries<br \\/>Director<\\/td>\\r\\n<td>Mr. Rohitha Wickramarathna<\\/td>\\r\\n<td>+94112484608<\\/td>\\r\\n<td>+94382243501<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Agriculture)<\\/td>\\r\\n<td>Ms: T.Y.L. Munasinghe<\\/td>\\r\\n<td>+94112484920<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Irrigation &amp; Land)<\\/td>\\r\\n<td>Mr: P.M.S. Jayathilaka<\\/td>\\r\\n<td>+94112484860<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Fisheries &amp; Livestock)<\\/td>\\r\\n<td>Mrs: H.K.T. Gunawardhana<\\/td>\\r\\n<td>+94112484585<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Plantation)<\\/td>\\r\\n<td>Mrs: M.A. Sudarshani Dabarera<\\/td>\\r\\n<td>+94112484927<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Regional Development &amp; Social Protection<br \\/>Director<\\/td>\\r\\n<td>Mr. T.M.J.Bandara<\\/td>\\r\\n<td>+94112484573<\\/td>\\r\\n<td>+94372232893<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Social Protection)<\\/td>\\r\\n<td>Mrs: D.A.. Niharepola<\\/td>\\r\\n<td>+94112484928<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(regional Development)<\\/td>\\r\\n<td>Mrs: Chandaniee Ramasinghe<\\/td>\\r\\n<td>+94112484590<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Health, Indigenous Medicine, Sports, Culture, Religion and National Integration<br \\/>Director<\\/td>\\r\\n<td>Mrs. C.Senayake<\\/td>\\r\\n<td>+94112484915<\\/td>\\r\\n<td>+94113184030<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Helth,Indigenous Medicine)<\\/td>\\r\\n<td>Mrs: Dilani Peiris<\\/td>\\r\\n<td>+94112484908<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Culture, Religion&amp; National Inntegration)<\\/td>\\r\\n<td>Mrs: D.H.R.D.Wijewardena<\\/td>\\r\\n<td>+94112484609<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Infrastructure Development &amp; Environment<br \\/>Director<br \\/>( Road,Ports &amp; Transport )<\\/td>\\r\\n<td>Mr. Mallawarachchi<\\/td>\\r\\n<td>+94112484597<\\/td>\\r\\n<td>+94342281079<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Director<br \\/>( Water,Housing and Urban Development)<\\/td>\\r\\n<td>Mr. M.F.A. Mubarak<\\/td>\\r\\n<td>+94112484875<\\/td>\\r\\n<td>+94112589629<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Roads &amp; Transport)<\\/td>\\r\\n<td>Mr: Priyankara Jayarathna<\\/td>\\r\\n<td>+94112484921<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Port &amp; Aviation)<\\/td>\\r\\n<td>Mrs D.N.Manorathne<\\/td>\\r\\n<td>+94112484969<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Housing &amp; Urban Development)<\\/td>\\r\\n<td>Miss.U.A.W. L. Sumanasekara<\\/td>\\r\\n<td>+94112484804<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Water Supply)<\\/td>\\r\\n<td>Mrs: K.A.H.K.Perera<\\/td>\\r\\n<td>+94112484872<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Environment)<\\/td>\\r\\n<td>Mr: K.B.S.S.Fernando<\\/td>\\r\\n<td>+94112484562<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Waster Management)<\\/td>\\r\\n<td>Mrs. W.M.Hansani<\\/td>\\r\\n<td>+94112484977<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Education, Higher Education &amp; Skills Development \\/Human Capital Development<br \\/>Director<\\/td>\\r\\n<td>Mr. T.A.D.D.Pramarathne<\\/td>\\r\\n<td>+94112484922<\\/td>\\r\\n<td>+94112705946<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Skills Development)<\\/td>\\r\\n<td>Mrs: Dilrukshi Samarakoon<\\/td>\\r\\n<td>+94112484783<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Education)<\\/td>\\r\\n<td>Ms: P.A.N.Abeysekara<\\/td>\\r\\n<td>+94112484925<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Higher Education &amp; Technology &amp; Reserch)<\\/td>\\r\\n<td>Mrs: K.D.C.Thamarasee<\\/td>\\r\\n<td>+94112484575<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Public Management &amp; Environment<br \\/>Assistant Director<br \\/>(Public Management)<\\/td>\\r\\n<td>Mrs: P.H.Chandima<\\/td>\\r\\n<td>+94112484592<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Macro Economic Planning<br \\/>Director<\\/td>\\r\\n<td>Mr. T.M.J.Bandara<\\/td>\\r\\n<td>+94112484573<\\/td>\\r\\n<td>+94372232893<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Macro Planning)<\\/td>\\r\\n<td>Mr. L.H.M.B.R.B.Lansakara<\\/td>\\r\\n<td>+94112484852<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Industries &amp; Trade<br \\/>Director<\\/td>\\r\\n<td>Mrs. A.K. Gunasekara<\\/td>\\r\\n<td>+94112484591<\\/td>\\r\\n<td>+94112923124<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Industry &amp; Trade)<\\/td>\\r\\n<td>Mr: R.D.A.Maithreerathna<\\/td>\\r\\n<td>+94112484784<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Tourism)<\\/td>\\r\\n<td>Mrs: W.L.P. Ferando<\\/td>\\r\\n<td>+94112484924<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Power &amp; Energy and Decontralized Budget<br \\/>Director<\\/td>\\r\\n<td>Mrs. T.Prassanth<\\/td>\\r\\n<td>+94112484613<\\/td>\\r\\n<td>+94112726073<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Power &amp; Energy)<\\/td>\\r\\n<td>Mr: R.K.L.Jagoda<\\/td>\\r\\n<td>+94112484866<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Decontralized Budget )<\\/td>\\r\\n<td>Mrs: Chandaniee Ramasinghe<\\/td>\\r\\n<td>+94112484590<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Administration Branch<br \\/>Director<\\/td>\\r\\n<td>Mrs. T. Prassanth<\\/td>\\r\\n<td>+94112484613<\\/td>\\r\\n<td>+94112726073<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Chf Management Asst<\\/td>\\r\\n<td>Mrs.K.G.P Damayanthi<\\/td>\\r\\n<td>+94112484612<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Accounts Branch<br \\/>Director<\\/td>\\r\\n<td>Miss. N.Wijeweera<\\/td>\\r\\n<td>+94112484610<\\/td>\\r\\n<td>+94112896152<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Development Information Center<br \\/>Assistant Director<\\/td>\\r\\n<td>Mrs. D.H.R.D.Wijewardana<\\/td>\\r\\n<td>+94112484609<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Devpt Ofcr<\\/td>\\r\\n<td>Mrs.Kanchana Jayasekara<\\/td>\\r\\n<td>+94112484931<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>","fulltext":"","state":1,"catid":"2","created":"2015-12-22 05:59:45","created_by":"327","created_by_alias":"","modified":"2015-12-29 09:11:01","modified_by":"327","checked_out":"327","checked_out_time":"2015-12-29 09:06:31","publish_up":"2015-12-22 05:59:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":67,"ordering":"6","metakey":"","metadesc":"","access":"1","hits":"150","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(99, 2, 1, '', '2015-12-29 09:25:36', 327, 9835, '298d9d6b794d06fed77c90ad666e945f6639e849', '{"id":2,"asset_id":"55","title":"Contact","alias":"contact","introtext":"<div>\\r\\n<div class=\\"map-contact\\"><iframe style=\\"border: 0;\\" src=\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3960.6444411802963!2d79.86342632753218!3d6.933031103875875!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae25905bf4b334f%3A0x2ff96db40d2d45ad!2sDepartment+of+Motor+Traffic!5e0!3m2!1sen!2s!4v1451236549040\\" width=\\"100%\\" height=\\"322\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/div>\\r\\n<div class=\\"contact-details\\">\\r\\n<div class=\\"contact-type first\\"><img src=\\"images\\/contactIcon\\/home.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/> The Secretariat,<br \\/> 1st Floor,<br \\/> Colombo 01.<\\/div>\\r\\n<div class=\\"contact-type\\"><img src=\\"images\\/contactIcon\\/4n.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/> +94-11-2484612<br \\/> +94-11-2484613<\\/div>\\r\\n<div class=\\"contact-type\\"><img src=\\"images\\/contactIcon\\/fax2.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/> +94-11-2448063<br \\/> +94-11-2431620<\\/div>\\r\\n<div class=\\"contact-type last\\"><img src=\\"images\\/contactIcon\\/mail.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/> <span class=\\"our-email\\">dgnp@npd.treasury.gov.lk<\\/span><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<table class=\\"contact-more\\" border=\\"1\\">\\r\\n<tbody>\\r\\n<tr><th>Position<\\/th><th>Name<\\/th><th>Phone<\\/th><th>Res<\\/th><\\/tr>\\r\\n<tr>\\r\\n<td>Department of National Planning<br \\/>Director General<\\/td>\\r\\n<td>Mr. S.S.Mudalige<\\/td>\\r\\n<td>+94-11-2484593\\/+94-11-2484566<\\/td>\\r\\n<td>+94-11-2719590<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Additional Director General<br \\/>(Public Investment &amp; Diagnostic Review)<\\/td>\\r\\n<td>Mrs. M.Gangatharan<\\/td>\\r\\n<td>+94-11-2484576<\\/td>\\r\\n<td>+94-11-2584881<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Additional Director General<br \\/>(Policy Development )<\\/td>\\r\\n<td>Mrs.J.M.S.D. Rathnayaka<\\/td>\\r\\n<td>+94-11-2484586<\\/td>\\r\\n<td>+94-11-2608447<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Additional Director General<br \\/>(Project Review )<\\/td>\\r\\n<td>Mr.K.D.S.R.Perera<\\/td>\\r\\n<td>+94-11-2484567<\\/td>\\r\\n<td>+94-34-2221396<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Agriculture, Irrigation, Land, Livestock and Fisheries<br \\/>Director<\\/td>\\r\\n<td>Mr. Rohitha Wickramarathna<\\/td>\\r\\n<td>+94-11-2484608<\\/td>\\r\\n<td>+94-38-2243501<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Agriculture)<\\/td>\\r\\n<td>Ms: T.Y.L. Munasinghe<\\/td>\\r\\n<td>+94-11-2484920<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Irrigation &amp; Land)<\\/td>\\r\\n<td>Mr: P.M.S. Jayathilaka<\\/td>\\r\\n<td>+94-11-2484860<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Fisheries &amp; Livestock)<\\/td>\\r\\n<td>Mrs: H.K.T. Gunawardhana<\\/td>\\r\\n<td>+94-11-2484585<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Plantation)<\\/td>\\r\\n<td>Mrs: M.A. Sudarshani Dabarera<\\/td>\\r\\n<td>+94-11-2484927<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Regional Development &amp; Social Protection<br \\/>Director<\\/td>\\r\\n<td>Mr. T.M.J.Bandara<\\/td>\\r\\n<td>+94-11-2484573<\\/td>\\r\\n<td>+94-37-2232893<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Social Protection)<\\/td>\\r\\n<td>Mrs: D.A.. Niharepola<\\/td>\\r\\n<td>+94-11-2484928<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Regional Development)<\\/td>\\r\\n<td>Mrs: Chandaniee Ramasinghe<\\/td>\\r\\n<td>+94-11-2484590<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Health, Indigenous Medicine, Sports, Culture, Religion and National Integration<br \\/>Director<\\/td>\\r\\n<td>Mrs. C.Senanayake<\\/td>\\r\\n<td>+94-11-2484915<\\/td>\\r\\n<td>+94-11-3184030<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Health,Indigenous Medicine)<\\/td>\\r\\n<td>Mrs: Dilani Peiris<\\/td>\\r\\n<td>+94-11-2484908<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Culture, Religion&amp; National Integration)<\\/td>\\r\\n<td>Mrs: D.H.R.D.Wijewardena<\\/td>\\r\\n<td>+94-11-2484609<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Infrastructure Development &amp; Environment<br \\/>Director<br \\/>( Road,Ports &amp; Transport )<\\/td>\\r\\n<td>Mr. Mallawarachchi<\\/td>\\r\\n<td>+94-11-2484597<\\/td>\\r\\n<td>+94-34-2281079<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Director<br \\/>( Water,Housing and Urban Development)<\\/td>\\r\\n<td>Mr. M.F.A. Mubarak<\\/td>\\r\\n<td>+94-11-2484875<\\/td>\\r\\n<td>+94-11-2589629<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Roads &amp; Transport)<\\/td>\\r\\n<td>Mr: Priyankara Jayarathna<\\/td>\\r\\n<td>+94-11-2484921<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Port &amp; Aviation)<\\/td>\\r\\n<td>Mrs D.N.Manorathne<\\/td>\\r\\n<td>+94-11-2484969<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Housing &amp; Urban Development)<\\/td>\\r\\n<td>Miss.U.A.W. L. Sumanasekara<\\/td>\\r\\n<td>+94-11-2484804<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Water Supply)<\\/td>\\r\\n<td>Mrs: K.A.H.K.Perera<\\/td>\\r\\n<td>+94-11-2484872<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Environment)<\\/td>\\r\\n<td>Mr: K.B.S.S.Fernando<\\/td>\\r\\n<td>+94-11-2484562<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Waster Management)<\\/td>\\r\\n<td>Mrs. W.M.Hansani<\\/td>\\r\\n<td>+94-11-2484977<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Education, Higher Education &amp; Skills Development \\/Human Capital Development<br \\/>Director<\\/td>\\r\\n<td>Mr. T.A.D.D.Pramarathne<\\/td>\\r\\n<td>+94-11-2484922<\\/td>\\r\\n<td>+94-11-2705946<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Skills Development)<\\/td>\\r\\n<td>Mrs: Dilrukshi Samarakoon<\\/td>\\r\\n<td>+94-11-2484783<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Education)<\\/td>\\r\\n<td>Ms: P.A.N.Abeysekara<\\/td>\\r\\n<td>+94-11-2484925<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Higher Education &amp; Technology &amp; Research)<\\/td>\\r\\n<td>Mrs: K.D.C.Thamarasee<\\/td>\\r\\n<td>+94-11-2484575<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Public Management &amp; Environment<br \\/>Assistant Director<br \\/>(Public Management)<\\/td>\\r\\n<td>Mrs: P.H.Chandima<\\/td>\\r\\n<td>+94-11-2484592<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Macro Economic Planning<br \\/>Director<\\/td>\\r\\n<td>Mr. T.M.J.Bandara<\\/td>\\r\\n<td>+94-11-2484573<\\/td>\\r\\n<td>+94-37-2232893<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Macro Planning)<\\/td>\\r\\n<td>Mr. L.H.M.B.R.B.Lansakara<\\/td>\\r\\n<td>+94-11-2484852<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Industries &amp; Trade<br \\/>Director<\\/td>\\r\\n<td>Mrs. A.K. Gunasekara<\\/td>\\r\\n<td>+94-11-2484591<\\/td>\\r\\n<td>+94-11-2923124<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Industry &amp; Trade)<\\/td>\\r\\n<td>Mr: R.D.A.Maithreerathna<\\/td>\\r\\n<td>+94-11-2484784<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Tourism)<\\/td>\\r\\n<td>Mrs: W.L.P. Ferando<\\/td>\\r\\n<td>+94-11-2484924<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Power &amp; Energy and Decentralized Budget<br \\/>Director<\\/td>\\r\\n<td>Mrs. T.Prassanth<\\/td>\\r\\n<td>+94-11-2484613<\\/td>\\r\\n<td>+94-11-2726073<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Power &amp; Energy)<\\/td>\\r\\n<td>Mr: R.K.L.Jagoda<\\/td>\\r\\n<td>+94-11-2484866<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Decentralized Budget )<\\/td>\\r\\n<td>Mrs: Chandaniee Ramasinghe<\\/td>\\r\\n<td>+94-11-2484590<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Administration Branch<br \\/>Director<\\/td>\\r\\n<td>Mrs. T. Prassanth<\\/td>\\r\\n<td>+94-11-2484613<\\/td>\\r\\n<td>+94-11-2726073<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Chief Management Assistant<\\/td>\\r\\n<td>Mrs.K.G.P Damayanthi<\\/td>\\r\\n<td>+94-11-2484612<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Accounts Branch<br \\/>Director<\\/td>\\r\\n<td>Miss. N.Wijeweera<\\/td>\\r\\n<td>+94-11-2484610<\\/td>\\r\\n<td>+94-11-2896152<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Development Information Center<br \\/>Assistant Director<\\/td>\\r\\n<td>Mrs. D.H.R.D.Wijewardana<\\/td>\\r\\n<td>+94-11-2484609<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Development Officer<\\/td>\\r\\n<td>Mrs.Kanchana Jayasekara<\\/td>\\r\\n<td>+94-11-2484931<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>","fulltext":"","state":1,"catid":"2","created":"2015-12-22 05:59:45","created_by":"327","created_by_alias":"","modified":"2015-12-29 09:25:36","modified_by":"327","checked_out":"327","checked_out_time":"2015-12-29 09:11:01","publish_up":"2015-12-22 05:59:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":68,"ordering":"6","metakey":"","metadesc":"","access":"1","hits":"151","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(100, 2, 1, '', '2015-12-29 16:09:05', 327, 9858, 'aefe59a7030d08561177f6475c98840abbda684d', '{"id":2,"asset_id":"55","title":"Contact","alias":"contact","introtext":"<div>\\r\\n<div class=\\"map-contact\\"><iframe style=\\"border: 0;\\" src=\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d1980.3318764693076!2d79.8433140412136!3d6.930733248024271!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae25a2d744fbcdb%3A0x8cd0e37d1db27611!2sDepartment+of+National+Planning%2C+General+Treasury!5e0!3m2!1sen!2s!4v1451404962779\\" width=\\"100%\\" height=\\"322\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/div>\\r\\n<div class=\\"contact-details\\">\\r\\n<div class=\\"contact-type first\\"><img src=\\"images\\/contactIcon\\/home.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/> The Secretariat,<br \\/> 1st Floor,<br \\/> Colombo 01.<\\/div>\\r\\n<div class=\\"contact-type\\"><img src=\\"images\\/contactIcon\\/4n.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/> +94-11-2484612<br \\/> +94-11-2484613<\\/div>\\r\\n<div class=\\"contact-type\\"><img src=\\"images\\/contactIcon\\/fax2.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/> +94-11-2448063<br \\/> +94-11-2431620<\\/div>\\r\\n<div class=\\"contact-type last\\"><img src=\\"images\\/contactIcon\\/mail.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/> <span class=\\"our-email\\">dgnp@npd.treasury.gov.lk<\\/span><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<table class=\\"contact-more\\" border=\\"1\\">\\r\\n<tbody>\\r\\n<tr><th>Position<\\/th><th>Name<\\/th><th>Phone<\\/th><th>Res<\\/th><\\/tr>\\r\\n<tr>\\r\\n<td>Department of National Planning<br \\/>Director General<\\/td>\\r\\n<td>Mr. S.S.Mudalige<\\/td>\\r\\n<td>+94-11-2484593\\/+94-11-2484566<\\/td>\\r\\n<td>+94-11-2719590<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Additional Director General<br \\/>(Public Investment &amp; Diagnostic Review)<\\/td>\\r\\n<td>Mrs. M.Gangatharan<\\/td>\\r\\n<td>+94-11-2484576<\\/td>\\r\\n<td>+94-11-2584881<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Additional Director General<br \\/>(Policy Development )<\\/td>\\r\\n<td>Mrs.J.M.S.D. Rathnayaka<\\/td>\\r\\n<td>+94-11-2484586<\\/td>\\r\\n<td>+94-11-2608447<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Additional Director General<br \\/>(Project Review )<\\/td>\\r\\n<td>Mr.K.D.S.R.Perera<\\/td>\\r\\n<td>+94-11-2484567<\\/td>\\r\\n<td>+94-34-2221396<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Agriculture, Irrigation, Land, Livestock and Fisheries<br \\/>Director<\\/td>\\r\\n<td>Mr. Rohitha Wickramarathna<\\/td>\\r\\n<td>+94-11-2484608<\\/td>\\r\\n<td>+94-38-2243501<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Agriculture)<\\/td>\\r\\n<td>Ms: T.Y.L. Munasinghe<\\/td>\\r\\n<td>+94-11-2484920<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Irrigation &amp; Land)<\\/td>\\r\\n<td>Mr: P.M.S. Jayathilaka<\\/td>\\r\\n<td>+94-11-2484860<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Fisheries &amp; Livestock)<\\/td>\\r\\n<td>Mrs: H.K.T. Gunawardhana<\\/td>\\r\\n<td>+94-11-2484585<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Plantation)<\\/td>\\r\\n<td>Mrs: M.A. Sudarshani Dabarera<\\/td>\\r\\n<td>+94-11-2484927<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Regional Development &amp; Social Protection<br \\/>Director<\\/td>\\r\\n<td>Mr. T.M.J.Bandara<\\/td>\\r\\n<td>+94-11-2484573<\\/td>\\r\\n<td>+94-37-2232893<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Social Protection)<\\/td>\\r\\n<td>Mrs: D.A.. Niharepola<\\/td>\\r\\n<td>+94-11-2484928<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Regional Development)<\\/td>\\r\\n<td>Mrs: Chandaniee Ramasinghe<\\/td>\\r\\n<td>+94-11-2484590<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Health, Indigenous Medicine, Sports, Culture, Religion and National Integration<br \\/>Director<\\/td>\\r\\n<td>Mrs. C.Senanayake<\\/td>\\r\\n<td>+94-11-2484915<\\/td>\\r\\n<td>+94-11-3184030<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Health,Indigenous Medicine)<\\/td>\\r\\n<td>Mrs: Dilani Peiris<\\/td>\\r\\n<td>+94-11-2484908<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Culture, Religion&amp; National Integration)<\\/td>\\r\\n<td>Mrs: D.H.R.D.Wijewardena<\\/td>\\r\\n<td>+94-11-2484609<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Infrastructure Development &amp; Environment<br \\/>Director<br \\/>( Road,Ports &amp; Transport )<\\/td>\\r\\n<td>Mr. Mallawarachchi<\\/td>\\r\\n<td>+94-11-2484597<\\/td>\\r\\n<td>+94-34-2281079<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Director<br \\/>( Water,Housing and Urban Development)<\\/td>\\r\\n<td>Mr. M.F.A. Mubarak<\\/td>\\r\\n<td>+94-11-2484875<\\/td>\\r\\n<td>+94-11-2589629<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Roads &amp; Transport)<\\/td>\\r\\n<td>Mr: Priyankara Jayarathna<\\/td>\\r\\n<td>+94-11-2484921<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Port &amp; Aviation)<\\/td>\\r\\n<td>Mrs D.N.Manorathne<\\/td>\\r\\n<td>+94-11-2484969<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Housing &amp; Urban Development)<\\/td>\\r\\n<td>Miss.U.A.W. L. Sumanasekara<\\/td>\\r\\n<td>+94-11-2484804<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Water Supply)<\\/td>\\r\\n<td>Mrs: K.A.H.K.Perera<\\/td>\\r\\n<td>+94-11-2484872<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Environment)<\\/td>\\r\\n<td>Mr: K.B.S.S.Fernando<\\/td>\\r\\n<td>+94-11-2484562<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Waster Management)<\\/td>\\r\\n<td>Mrs. W.M.Hansani<\\/td>\\r\\n<td>+94-11-2484977<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Education, Higher Education &amp; Skills Development \\/Human Capital Development<br \\/>Director<\\/td>\\r\\n<td>Mr. T.A.D.D.Pramarathne<\\/td>\\r\\n<td>+94-11-2484922<\\/td>\\r\\n<td>+94-11-2705946<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Skills Development)<\\/td>\\r\\n<td>Mrs: Dilrukshi Samarakoon<\\/td>\\r\\n<td>+94-11-2484783<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Education)<\\/td>\\r\\n<td>Ms: P.A.N.Abeysekara<\\/td>\\r\\n<td>+94-11-2484925<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Higher Education &amp; Technology &amp; Research)<\\/td>\\r\\n<td>Mrs: K.D.C.Thamarasee<\\/td>\\r\\n<td>+94-11-2484575<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Public Management &amp; Environment<br \\/>Assistant Director<br \\/>(Public Management)<\\/td>\\r\\n<td>Mrs: P.H.Chandima<\\/td>\\r\\n<td>+94-11-2484592<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Macro Economic Planning<br \\/>Director<\\/td>\\r\\n<td>Mr. T.M.J.Bandara<\\/td>\\r\\n<td>+94-11-2484573<\\/td>\\r\\n<td>+94-37-2232893<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Macro Planning)<\\/td>\\r\\n<td>Mr. L.H.M.B.R.B.Lansakara<\\/td>\\r\\n<td>+94-11-2484852<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Industries &amp; Trade<br \\/>Director<\\/td>\\r\\n<td>Mrs. A.K. Gunasekara<\\/td>\\r\\n<td>+94-11-2484591<\\/td>\\r\\n<td>+94-11-2923124<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Industry &amp; Trade)<\\/td>\\r\\n<td>Mr: R.D.A.Maithreerathna<\\/td>\\r\\n<td>+94-11-2484784<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Tourism)<\\/td>\\r\\n<td>Mrs: W.L.P. Ferando<\\/td>\\r\\n<td>+94-11-2484924<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Power &amp; Energy and Decentralized Budget<br \\/>Director<\\/td>\\r\\n<td>Mrs. T.Prassanth<\\/td>\\r\\n<td>+94-11-2484613<\\/td>\\r\\n<td>+94-11-2726073<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Power &amp; Energy)<\\/td>\\r\\n<td>Mr: R.K.L.Jagoda<\\/td>\\r\\n<td>+94-11-2484866<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Decentralized Budget )<\\/td>\\r\\n<td>Mrs: Chandaniee Ramasinghe<\\/td>\\r\\n<td>+94-11-2484590<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Administration Branch<br \\/>Director<\\/td>\\r\\n<td>Mrs. T. Prassanth<\\/td>\\r\\n<td>+94-11-2484613<\\/td>\\r\\n<td>+94-11-2726073<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Chief Management Assistant<\\/td>\\r\\n<td>Mrs.K.G.P Damayanthi<\\/td>\\r\\n<td>+94-11-2484612<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Accounts Branch<br \\/>Director<\\/td>\\r\\n<td>Miss. N.Wijeweera<\\/td>\\r\\n<td>+94-11-2484610<\\/td>\\r\\n<td>+94-11-2896152<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Development Information Center<br \\/>Assistant Director<\\/td>\\r\\n<td>Mrs. D.H.R.D.Wijewardana<\\/td>\\r\\n<td>+94-11-2484609<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Development Officer<\\/td>\\r\\n<td>Mrs.Kanchana Jayasekara<\\/td>\\r\\n<td>+94-11-2484931<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>","fulltext":"","state":1,"catid":"2","created":"2015-12-22 05:59:45","created_by":"327","created_by_alias":"","modified":"2015-12-29 16:09:05","modified_by":"327","checked_out":"327","checked_out_time":"2015-12-29 16:06:18","publish_up":"2015-12-22 05:59:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":69,"ordering":"6","metakey":"","metadesc":"","access":"1","hits":"164","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `c39g0_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(101, 2, 1, '', '2015-12-30 12:39:42', 327, 10568, '1f8ce8a748aa32c262800b6bc9007ffbc58b2551', '{"id":2,"asset_id":"55","title":"Contact","alias":"contact","introtext":"<div>\\r\\n<div class=\\"map-contact\\"><iframe style=\\"border: 0;\\" src=\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d1980.3318764693076!2d79.8433140412136!3d6.930733248024271!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae25a2d744fbcdb%3A0x8cd0e37d1db27611!2sDepartment+of+National+Planning%2C+General+Treasury!5e0!3m2!1sen!2s!4v1451404962779\\" width=\\"100%\\" height=\\"322\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/div>\\r\\n<div class=\\"contact-details\\">\\r\\n<div class=\\"contact-type first\\"><img src=\\"images\\/contactIcon\\/home.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/> The Secretariat,<br \\/> 1st Floor,<br \\/> Colombo 01.<\\/div>\\r\\n<div class=\\"contact-type\\"><img src=\\"images\\/contactIcon\\/4n.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/> +94-11-2484612<br \\/> +94-11-2484613<\\/div>\\r\\n<div class=\\"contact-type\\"><img src=\\"images\\/contactIcon\\/fax2.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/> +94-11-2448063<br \\/> +94-11-2431620<\\/div>\\r\\n<div class=\\"contact-type last\\"><img src=\\"images\\/contactIcon\\/mail.png\\" alt=\\"\\" width=\\"50\\" height=\\"50\\" \\/> <span class=\\"our-email\\">dgnp@npd.treasury.gov.lk<\\/span><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<table class=\\"contact-more\\" border=\\"1\\">\\r\\n<tbody>\\r\\n<tr><th width=\\"284\\">Position<\\/th><th width=\\"266\\">Name<\\/th><th width=\\"222\\">Phone<\\/th><th width=\\"109\\">Res<\\/th><\\/tr>\\r\\n<tr>\\r\\n<td>Department of National Planning<br \\/>Director General<\\/td>\\r\\n<td>Mr. S.S.Mudalige<\\/td>\\r\\n<td>+94-11-2484593\\/+94-11-2484566<\\/td>\\r\\n<td>+94-11-2719590<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Additional Director General<br \\/>(Public Investment &amp; Diagnostic Review)<\\/td>\\r\\n<td>Mrs. M.Gangatharan<\\/td>\\r\\n<td>+94-11-2484576<\\/td>\\r\\n<td>+94-11-2584881<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Additional Director General<br \\/>(Policy Development )<\\/td>\\r\\n<td>Mrs.J.M.S.D. Rathnayaka<\\/td>\\r\\n<td>+94-11-2484586<\\/td>\\r\\n<td>+94-11-2608447<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Additional Director General<br \\/>(Project Review )<\\/td>\\r\\n<td>Mr.K.D.S.R.Perera<\\/td>\\r\\n<td>+94-11-2484567<\\/td>\\r\\n<td>+94-34-2221396<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td colspan=\\"4\\" bgcolor=\\"#ECEEEA\\">Agriculture, Irrigation, Land, Livestock and Fisheries<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Director<\\/td>\\r\\n<td>Mr. Rohitha Wickramarathna<\\/td>\\r\\n<td>+94-11-2484608<\\/td>\\r\\n<td>+94-38-2243501<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Agriculture)<\\/td>\\r\\n<td>Ms: T.Y.L. Munasinghe<\\/td>\\r\\n<td>+94-11-2484920<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Irrigation &amp; Land)<\\/td>\\r\\n<td>Mr: P.M.S. Jayathilaka<\\/td>\\r\\n<td>+94-11-2484860<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Fisheries &amp; Livestock)<\\/td>\\r\\n<td>Mrs: H.K.T. Gunawardhana<\\/td>\\r\\n<td>+94-11-2484585<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Plantation)<\\/td>\\r\\n<td>Mrs: M.A. Sudarshani Dabarera<\\/td>\\r\\n<td>+94-11-2484927<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td colspan=\\"4\\" bgcolor=\\"#ECEEEA\\">Regional Development &amp; Social Protection<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Director<\\/td>\\r\\n<td>Mr. T.M.J.Bandara<\\/td>\\r\\n<td>+94-11-2484573<\\/td>\\r\\n<td>+94-37-2232893<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Social Protection)<\\/td>\\r\\n<td>Mrs: D.A.. Niharepola<\\/td>\\r\\n<td>+94-11-2484928<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Regional Development)<\\/td>\\r\\n<td>Mrs: Chandaniee Ramasinghe<\\/td>\\r\\n<td>+94-11-2484590<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td colspan=\\"4\\" bgcolor=\\"#ECEEEA\\">Health, Indigenous Medicine, Sports, Culture, Religion and National Integration<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Director<\\/td>\\r\\n<td>Mrs. C.Senanayake<\\/td>\\r\\n<td>+94-11-2484915<\\/td>\\r\\n<td>+94-11-3184030<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/> (Health, Indigenous Medicine)<\\/td>\\r\\n<td>Mrs: Dilani Peiris<\\/td>\\r\\n<td>+94-11-2484908<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Culture, Religion&amp; National Integration)<\\/td>\\r\\n<td>Mrs: D.H.R.D.Wijewardena<\\/td>\\r\\n<td>+94-11-2484609<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td colspan=\\"4\\" bgcolor=\\"#ECEEEA\\">Infrastructure Development &amp; Environment<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Director<br \\/> ( Road, Ports &amp; Transport )<\\/td>\\r\\n<td>Mr. Mallawarachchi<\\/td>\\r\\n<td>+94-11-2484597<\\/td>\\r\\n<td>+94-34-2281079<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td colspan=\\"4\\" bgcolor=\\"#ECEEEA\\">(Water, Housing and Urban Development)<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Director<\\/td>\\r\\n<td>Mr. M.F.A. Mubarak<\\/td>\\r\\n<td>+94-11-2484875<\\/td>\\r\\n<td>+94-11-2589629<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Roads &amp; Transport)<\\/td>\\r\\n<td>Mr: Priyankara Jayarathna<\\/td>\\r\\n<td>+94-11-2484921<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Port &amp; Aviation)<\\/td>\\r\\n<td>Mrs D.N.Manorathne<\\/td>\\r\\n<td>+94-11-2484969<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Housing &amp; Urban Development)<\\/td>\\r\\n<td>Miss.U.A.W. L. Sumanasekara<\\/td>\\r\\n<td>+94-11-2484804<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Water Supply)<\\/td>\\r\\n<td>Mrs: K.A.H.K.Perera<\\/td>\\r\\n<td>+94-11-2484872<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Environment)<\\/td>\\r\\n<td>Mr: K.B.S.S.Fernando<\\/td>\\r\\n<td>+94-11-2484562<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Waster Management)<\\/td>\\r\\n<td>Mrs. W.M.Hansani<\\/td>\\r\\n<td>+94-11-2484977<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td colspan=\\"4\\" bgcolor=\\"#ECEEEA\\">Education, Higher Education &amp; Skills Development \\/ Human Capital Development<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Director<\\/td>\\r\\n<td>Mr. T.A.D.D.Pramarathne<\\/td>\\r\\n<td>+94-11-2484922<\\/td>\\r\\n<td>+94-11-2705946<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Skills Development)<\\/td>\\r\\n<td>Mrs: Dilrukshi Samarakoon<\\/td>\\r\\n<td>+94-11-2484783<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Education)<\\/td>\\r\\n<td>Ms: P.A.N.Abeysekara<\\/td>\\r\\n<td>+94-11-2484925<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Higher Education &amp; Technology &amp; Research)<\\/td>\\r\\n<td>Mrs: K.D.C.Thamarasee<\\/td>\\r\\n<td>+94-11-2484575<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Public Management &amp; Environment<br \\/>Assistant Director<br \\/>(Public Management)<\\/td>\\r\\n<td>Mrs: P.H.Chandima<\\/td>\\r\\n<td>+94-11-2484592<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td colspan=\\"4\\" bgcolor=\\"#ECEEEA\\">Macro Economic Planning<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Director<\\/td>\\r\\n<td>Mr. T.M.J.Bandara<\\/td>\\r\\n<td>+94-11-2484573<\\/td>\\r\\n<td>+94-37-2232893<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Macro Planning)<\\/td>\\r\\n<td>Mr. L.H.M.B.R.B.Lansakara<\\/td>\\r\\n<td>+94-11-2484852<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td colspan=\\"4\\" bgcolor=\\"#ECEEEA\\">Industries &amp; Trade<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Director<\\/td>\\r\\n<td>Mrs. A.K. Gunasekara<\\/td>\\r\\n<td>+94-11-2484591<\\/td>\\r\\n<td>+94-11-2923124<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Industry &amp; Trade)<\\/td>\\r\\n<td>Mr: R.D.A.Maithreerathna<\\/td>\\r\\n<td>+94-11-2484784<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Tourism)<\\/td>\\r\\n<td>Mrs: W.L.P. Ferando<\\/td>\\r\\n<td>+94-11-2484924<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td colspan=\\"4\\" bgcolor=\\"#ECEEEA\\">Power &amp; Energy and Decentralized Budget<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Director<\\/td>\\r\\n<td>Mrs. T.Prassanth<\\/td>\\r\\n<td>+94-11-2484613<\\/td>\\r\\n<td>+94-11-2726073<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Power &amp; Energy)<\\/td>\\r\\n<td>Mr: R.K.L.Jagoda<\\/td>\\r\\n<td>+94-11-2484866<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Assistant Director<br \\/>(Decentralized Budget )<\\/td>\\r\\n<td>Mrs: Chandaniee Ramasinghe<\\/td>\\r\\n<td>+94-11-2484590<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td colspan=\\"4\\" bgcolor=\\"#ECEEEA\\">Administration Branch<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Director<\\/td>\\r\\n<td>Mrs. T. Prassanth<\\/td>\\r\\n<td>+94-11-2484613<\\/td>\\r\\n<td>+94-11-2726073<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Chief Management Assistant<\\/td>\\r\\n<td>Mrs.K.G.P Damayanthi<\\/td>\\r\\n<td>+94-11-2484612<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td colspan=\\"4\\" bgcolor=\\"#ECEEEA\\">Accounts Branch<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Director<\\/td>\\r\\n<td>Miss. N.Wijeweera<\\/td>\\r\\n<td>+94-11-2484610<\\/td>\\r\\n<td>+94-11-2896152<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Development Information Center<br \\/>Assistant Director<\\/td>\\r\\n<td>Mrs. D.H.R.D.Wijewardana<\\/td>\\r\\n<td>+94-11-2484609<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Development Officer<\\/td>\\r\\n<td>Mrs.Kanchana Jayasekara<\\/td>\\r\\n<td>+94-11-2484931<\\/td>\\r\\n<td>-<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>","fulltext":"","state":1,"catid":"2","created":"2015-12-22 05:59:45","created_by":"327","created_by_alias":"","modified":"2015-12-30 12:39:42","modified_by":"327","checked_out":"327","checked_out_time":"2015-12-30 12:21:59","publish_up":"2015-12-22 05:59:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":70,"ordering":"6","metakey":"","metadesc":"","access":"1","hits":"175","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_updates`
--

CREATE TABLE IF NOT EXISTS `c39g0_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_update_sites`
--

CREATE TABLE IF NOT EXISTS `c39g0_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `c39g0_update_sites`
--

INSERT INTO `c39g0_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1452508221, ''),
(2, 'Joomla! Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1452508221, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 1452508220, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1452508220, ''),
(5, 'jDownloads Update Site', 'extension', 'http://www.jdownloads.com/updates/3.2/final/jdownloads-update.xml', 1, 1452508220, '');

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `c39g0_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `c39g0_update_sites_extensions`
--

INSERT INTO `c39g0_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 28),
(5, 10003);

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_usergroups`
--

CREATE TABLE IF NOT EXISTS `c39g0_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `c39g0_usergroups`
--

INSERT INTO `c39g0_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_users`
--

CREATE TABLE IF NOT EXISTS `c39g0_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=328 ;

--
-- Dumping data for table `c39g0_users`
--

INSERT INTO `c39g0_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(327, 'Super User', 'admin', 'ashanrupasinghe11@gmail.com', '$2y$10$EdsYGQ3iFuAYsnZo63ZWReeNztnjS3t6mYnT2osU/UZ4oiiyepxoq', 0, 1, '2015-12-22 05:07:20', '2016-01-11 10:30:51', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_user_keys`
--

CREATE TABLE IF NOT EXISTS `c39g0_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_user_notes`
--

CREATE TABLE IF NOT EXISTS `c39g0_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_user_profiles`
--

CREATE TABLE IF NOT EXISTS `c39g0_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `c39g0_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `c39g0_user_usergroup_map`
--

INSERT INTO `c39g0_user_usergroup_map` (`user_id`, `group_id`) VALUES
(327, 8);

-- --------------------------------------------------------

--
-- Table structure for table `c39g0_viewlevels`
--

CREATE TABLE IF NOT EXISTS `c39g0_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `c39g0_viewlevels`
--

INSERT INTO `c39g0_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
