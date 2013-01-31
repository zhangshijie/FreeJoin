-- phpMyAdmin SQL Dump
-- version 3.3.8.1
-- http://www.phpmyadmin.net
--
-- 主机: w.rdc.sae.sina.com.cn:3307
-- 生成日期: 2013 年 01 月 31 日 09:51
-- 服务器版本: 5.5.23
-- PHP 版本: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `app_freejoin`
--

-- --------------------------------------------------------

--
-- 表的结构 `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `auth_group`
--


-- --------------------------------------------------------

--
-- 表的结构 `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `auth_group_permissions`
--


-- --------------------------------------------------------

--
-- 表的结构 `auth_message`
--

CREATE TABLE IF NOT EXISTS `auth_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_message_fbfc09f1` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `auth_message`
--


-- --------------------------------------------------------

--
-- 表的结构 `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_e4470c6e` (`content_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- 转存表中的数据 `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add message', 4, 'add_message'),
(11, 'Can change message', 4, 'change_message'),
(12, 'Can delete message', 4, 'delete_message'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add site', 7, 'add_site'),
(20, 'Can change site', 7, 'change_site'),
(21, 'Can delete site', 7, 'delete_site'),
(22, 'Can add match', 8, 'add_match'),
(23, 'Can change match', 8, 'change_match'),
(24, 'Can delete match', 8, 'delete_match'),
(25, 'Can add user', 9, 'add_user'),
(26, 'Can change user', 9, 'change_user'),
(27, 'Can delete user', 9, 'delete_user'),
(31, 'Can add news', 11, 'add_news'),
(32, 'Can change news', 11, 'change_news'),
(33, 'Can delete news', 11, 'delete_news'),
(34, 'Can add message', 12, 'add_message'),
(35, 'Can change message', 12, 'change_message'),
(36, 'Can delete message', 12, 'delete_message'),
(37, 'Can add log entry', 13, 'add_logentry'),
(38, 'Can change log entry', 13, 'change_logentry'),
(39, 'Can delete log entry', 13, 'delete_logentry'),
(40, 'Can add relation', 14, 'add_relation'),
(41, 'Can change relation', 14, 'change_relation'),
(42, 'Can delete relation', 14, 'delete_relation');

-- --------------------------------------------------------

--
-- 表的结构 `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `auth_user`
--

INSERT INTO `auth_user` (`id`, `username`, `first_name`, `last_name`, `email`, `password`, `is_staff`, `is_active`, `is_superuser`, `last_login`, `date_joined`) VALUES
(1, 'admin', '', '', 'cjzhang88@gmail.com', 'sha1$372dc$7841b8b66bbbaf570b14d0c2b4b814c87764eeac', 1, 1, 1, '2012-11-16 11:04:15', '2012-11-12 11:40:18'),
(2, 'CJ__Cheung', '', '', 'test@test.me', 'sha1$79d91$1fa2d4ab713821f407d3e0a561e6e63950efaea8', 0, 1, 0, '2013-01-21 13:19:56', '2012-11-19 17:09:31');

-- --------------------------------------------------------

--
-- 表的结构 `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `auth_user_groups`
--


-- --------------------------------------------------------

--
-- 表的结构 `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `auth_user_user_permissions`
--


-- --------------------------------------------------------

--
-- 表的结构 `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `user_id`, `content_type_id`, `object_id`, `object_repr`, `action_flag`, `change_message`) VALUES
(1, '2012-11-13 02:47:56', 1, 9, '1', 'User object', 1, ''),
(2, '2012-11-13 02:48:50', 1, 8, '1', 'Match object', 1, ''),
(3, '2012-11-13 02:49:13', 1, 12, '1', 'Message object', 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'permission', 'auth', 'permission'),
(2, 'group', 'auth', 'group'),
(3, 'user', 'auth', 'user'),
(4, 'message', 'auth', 'message'),
(5, 'content type', 'contenttypes', 'contenttype'),
(6, 'session', 'sessions', 'session'),
(7, 'site', 'sites', 'site'),
(8, 'match', 'FreeJoinapp', 'match'),
(9, 'user', 'FreeJoinapp', 'user'),
(11, 'news', 'FreeJoinapp', 'news'),
(12, 'message', 'FreeJoinapp', 'message'),
(13, 'log entry', 'admin', 'logentry'),
(14, 'relation', 'FreeJoinapp', 'relation');

-- --------------------------------------------------------

--
-- 表的结构 `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_c25c2c28` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('9e0d97e020b204e628131545b80fc9db', 'MzQ2MzFhNWVlODQ3NTllNGVlNzdhZDU1YTc3NWIxYmFkMTkxY2ZmMTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-11-26 21:39:30'),
('200fcbe1e2e8403758b262abd747c6cd', 'gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigECdS5kMjVmMWYxODA1OTgxMDZlMWMz\nNmQyNjIzNTE0MDg1Yw==\n', '2012-12-18 20:15:36'),
('4cde465af55b5144442ecdf36a3b8039', 'gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigECdS5kMjVmMWYxODA1OTgxMDZlMWMz\nNmQyNjIzNTE0MDg1Yw==\n', '2013-02-04 13:19:56'),
('444aa8dee1f0bb77bbc437bac7149f88', 'gAJ9cQEoVQ1fYXV0aF91c2VyX2lkigECVRJfYXV0aF91c2VyX2JhY2tlbmRVKWRqYW5nby5jb250\ncmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kcQJ1LjJhMGFhMDAwNzMzMzA4N2FjNzk0NTM0\nZDllODZhOWQz\n', '2012-12-04 00:55:41');

-- --------------------------------------------------------

--
-- 表的结构 `django_site`
--

CREATE TABLE IF NOT EXISTS `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- 表的结构 `FreeJoinapp_match`
--

CREATE TABLE IF NOT EXISTS `FreeJoinapp_match` (
  `MatchId` int(11) NOT NULL AUTO_INCREMENT,
  `Time` time NOT NULL,
  `Date` date NOT NULL,
  `Site` longtext NOT NULL,
  `Level` int(11) NOT NULL,
  `Range` int(11) NOT NULL,
  `MainUser` int(11) NOT NULL,
  PRIMARY KEY (`MatchId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `FreeJoinapp_match`
--

INSERT INTO `FreeJoinapp_match` (`MatchId`, `Time`, `Date`, `Site`, `Level`, `Range`, `MainUser`) VALUES
(1, '06:00:00', '2012-11-14', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 1, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `FreeJoinapp_message`
--

CREATE TABLE IF NOT EXISTS `FreeJoinapp_message` (
  `MessageId` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `MatchId` int(11) NOT NULL,
  `AddTime` datetime NOT NULL,
  PRIMARY KEY (`MessageId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `FreeJoinapp_message`
--

INSERT INTO `FreeJoinapp_message` (`MessageId`, `UserId`, `MatchId`, `AddTime`) VALUES
(1, 0, 0, '2012-11-13 02:49:13');

-- --------------------------------------------------------

--
-- 表的结构 `FreeJoinapp_news`
--

CREATE TABLE IF NOT EXISTS `FreeJoinapp_news` (
  `NewsId` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `TheNews` longtext NOT NULL,
  `MatchId` int(11) NOT NULL,
  `MessageId` int(11) NOT NULL,
  PRIMARY KEY (`NewsId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `FreeJoinapp_news`
--


-- --------------------------------------------------------

--
-- 表的结构 `FreeJoinapp_relation`
--

CREATE TABLE IF NOT EXISTS `FreeJoinapp_relation` (
  `RelationId` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `FollowerId` int(11) NOT NULL,
  PRIMARY KEY (`RelationId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `FreeJoinapp_relation`
--


-- --------------------------------------------------------

--
-- 表的结构 `FreeJoinapp_site`
--

CREATE TABLE IF NOT EXISTS `FreeJoinapp_site` (
  `SiteId` int(11) NOT NULL,
  `SiteName` varchar(50) NOT NULL,
  `Site_x` varchar(15) NOT NULL,
  `Site_y` varchar(15) NOT NULL,
  `SiteDetail` varchar(150) NOT NULL,
  PRIMARY KEY (`SiteId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `FreeJoinapp_site`
--


-- --------------------------------------------------------

--
-- 表的结构 `FreeJoinapp_users`
--

CREATE TABLE IF NOT EXISTS `FreeJoinapp_users` (
  `UserId` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `RegisterTime` date NOT NULL,
  `WeiboUrl` varchar(150) NOT NULL,
  `cellphone` varchar(30) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `weibo_uid` varchar(30) NOT NULL,
  `province` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `profile_image_url` varchar(150) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `avatar_large` varchar(150) NOT NULL,
  `description` varchar(300) NOT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `FreeJoinapp_users`
--

INSERT INTO `FreeJoinapp_users` (`UserId`, `Name`, `RegisterTime`, `WeiboUrl`, `cellphone`, `qq`, `weibo_uid`, `province`, `city`, `profile_image_url`, `gender`, `avatar_large`, `description`) VALUES
(1, '张三', '2012-11-13', 'http://weibo.com/zhangshijie22', '18923128461', '819510047', '', 0, 0, '', '', '', ''),
(11, 'CJ__Cheung', '2012-11-19', 'zhangshijie22', '', '', '1913486883', 44, 6, 'http://tp4.sinaimg.cn/1913486883/50/5621509114/1', 'm', 'http://tp4.sinaimg.cn/1913486883/180/5621509114/1', '推倒昨天的自己。(*^__^*)');
