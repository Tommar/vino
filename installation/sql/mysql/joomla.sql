-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2015 at 04:41 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bt_bistro_create_quickstart`
--

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_config`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_config` (
  `namekey` varchar(200) NOT NULL,
  `value` text,
  PRIMARY KEY (`namekey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__acymailing_config`
--

INSERT INTO `#__acymailing_config` (`namekey`, `value`) VALUES
('level', 'Starter'),
('version', '4.9.2'),
('smtp_port', ''),
('from_name', 'BT Bistro'),
('from_email', 'sdfsdf@dgdf.ghd'),
('bounce_email', 'sdfsdf@dgdf.ghd'),
('mailer_method', 'mail'),
('sendmail_path', '/usr/sbin/sendmail'),
('smtp_secured', ''),
('smtp_auth', '0'),
('smtp_username', ''),
('smtp_password', ''),
('reply_name', 'BT Bistro'),
('reply_email', 'sdfsdf@dgdf.ghd'),
('cron_sendto', 'sdfsdf@dgdf.ghd'),
('add_names', '1'),
('encoding_format', '8bit'),
('charset', 'UTF-8'),
('word_wrapping', '150'),
('hostname', ''),
('embed_images', '0'),
('embed_files', '1'),
('editor', 'acyeditor'),
('multiple_part', '1'),
('smtp_host', 'localhost'),
('queue_nbmail', '40'),
('queue_nbmail_auto', '70'),
('queue_type', 'auto'),
('queue_try', '3'),
('queue_pause', '120'),
('allow_visitor', '1'),
('require_confirmation', '0'),
('priority_newsletter', '3'),
('allowedfiles', 'zip,doc,docx,pdf,xls,txt,gzip,rar,jpg,gif,xlsx,pps,csv,bmp,ico,odg,odp,ods,odt,png,ppt,swf,xcf,mp3,wma'),
('uploadfolder', 'media/com_acymailing/upload'),
('confirm_redirect', ''),
('subscription_message', '1'),
('notification_unsuball', ''),
('cron_next', '1251990901'),
('confirmation_message', '1'),
('welcome_message', '1'),
('unsub_message', '1'),
('cron_last', '0'),
('cron_fromip', ''),
('cron_report', ''),
('cron_frequency', '900'),
('cron_sendreport', '2'),
('cron_fullreport', '1'),
('cron_savereport', '2'),
('cron_savepath', 'media/com_acymailing/logs/report439300537.log'),
('notification_created', ''),
('notification_accept', ''),
('notification_refuse', ''),
('forward', '0'),
('description_starter', 'Joomla!® Mailing Extension'),
('description_essential', 'Joomla!® Mailing Extension'),
('description_business', 'Joomla!® Newsletter System'),
('description_enterprise', 'Joomla!® Mailing Extension'),
('priority_followup', '2'),
('unsub_redirect', ''),
('show_footer', '1'),
('use_sef', '0'),
('itemid', '0'),
('css_module', 'default'),
('css_frontend', 'default'),
('css_backend', 'default'),
('bootstrap_frontend', '0'),
('menu_position', 'under'),
('unsub_reasons', 'a:2:{i:0;s:21:"UNSUB_SURVEY_FREQUENT";i:1;s:21:"UNSUB_SURVEY_RELEVANT";}'),
('security_key', 'RYDzkI9opiKVz2GpUyPNhXUgczfDiK'),
('installcomplete', '0'),
('Starter', '0'),
('Essential', '1'),
('Business', '2'),
('Enterprise', '3'),
('website', 'http://localhost/bt_bistro/'),
('max_execution_time', '0'),
('module_redirect', 'localhost|10.0.0.1|10.0.0.198');

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_fields`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_fields` (
  `fieldid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `fieldname` varchar(250) NOT NULL,
  `namekey` varchar(50) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `value` text NOT NULL,
  `published` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ordering` smallint(5) unsigned DEFAULT '99',
  `options` text,
  `core` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `required` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `backend` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `frontcomp` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `default` varchar(250) DEFAULT NULL,
  `listing` tinyint(3) unsigned DEFAULT NULL,
  `frontlisting` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `frontjoomlaprofile` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `frontjoomlaregistration` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `joomlaprofile` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `access` varchar(250) NOT NULL DEFAULT 'all',
  `fieldcat` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldid`),
  UNIQUE KEY `namekey` (`namekey`),
  KEY `orderingindex` (`published`,`ordering`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `#__acymailing_fields`
--

INSERT INTO `#__acymailing_fields` (`fieldid`, `fieldname`, `namekey`, `type`, `value`, `published`, `ordering`, `options`, `core`, `required`, `backend`, `frontcomp`, `default`, `listing`, `frontlisting`, `frontjoomlaprofile`, `frontjoomlaregistration`, `joomlaprofile`, `access`, `fieldcat`) VALUES
(1, 'NAMECAPTION', 'name', 'text', '', 1, 1, '', 1, 1, 1, 1, '', 1, 1, 0, 0, 0, 'all', 0),
(2, 'EMAILCAPTION', 'email', 'text', '', 1, 2, '', 1, 1, 1, 1, '', 1, 1, 0, 0, 0, 'all', 0),
(3, 'RECEIVE', 'html', 'radio', '0::JOOMEXT_TEXT\n1::HTML', 1, 3, '', 1, 1, 1, 1, '1', 1, 0, 0, 0, 0, 'all', 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_filter`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_filter` (
  `filid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `description` text,
  `published` tinyint(3) unsigned DEFAULT NULL,
  `lasttime` int(10) unsigned DEFAULT NULL,
  `trigger` text,
  `report` text,
  `action` text,
  `filter` text,
  PRIMARY KEY (`filid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_geolocation`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_geolocation` (
  `geolocation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `geolocation_subid` int(10) unsigned NOT NULL DEFAULT '0',
  `geolocation_type` varchar(255) NOT NULL DEFAULT 'subscription',
  `geolocation_ip` varchar(255) NOT NULL DEFAULT '',
  `geolocation_created` int(10) unsigned NOT NULL DEFAULT '0',
  `geolocation_latitude` decimal(9,6) NOT NULL DEFAULT '0.000000',
  `geolocation_longitude` decimal(9,6) NOT NULL DEFAULT '0.000000',
  `geolocation_postal_code` varchar(255) NOT NULL DEFAULT '',
  `geolocation_country` varchar(255) NOT NULL DEFAULT '',
  `geolocation_country_code` varchar(255) NOT NULL DEFAULT '',
  `geolocation_state` varchar(255) NOT NULL DEFAULT '',
  `geolocation_state_code` varchar(255) NOT NULL DEFAULT '',
  `geolocation_city` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`geolocation_id`),
  KEY `geolocation_type` (`geolocation_subid`,`geolocation_type`),
  KEY `geolocation_ip_created` (`geolocation_ip`,`geolocation_created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_history`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_history` (
  `subid` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `action` varchar(50) NOT NULL COMMENT 'different actions: created,modified,confirmed',
  `data` text,
  `source` text,
  `mailid` mediumint(8) unsigned DEFAULT NULL,
  KEY `subid` (`subid`,`date`),
  KEY `dateindex` (`date`),
  KEY `actionindex` (`action`,`mailid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_list`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_list` (
  `name` varchar(250) NOT NULL,
  `description` text,
  `ordering` smallint(5) unsigned DEFAULT '0',
  `listid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `published` tinyint(4) DEFAULT NULL,
  `userid` int(10) unsigned DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `color` varchar(30) DEFAULT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `welmailid` mediumint(9) DEFAULT NULL,
  `unsubmailid` mediumint(9) DEFAULT NULL,
  `type` enum('list','campaign') NOT NULL DEFAULT 'list',
  `access_sub` varchar(250) NOT NULL DEFAULT 'all',
  `access_manage` varchar(250) NOT NULL DEFAULT 'none',
  `languages` varchar(250) NOT NULL DEFAULT 'all',
  `startrule` varchar(50) NOT NULL DEFAULT '0',
  `category` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`listid`),
  KEY `typeorderingindex` (`type`,`ordering`),
  KEY `useridindex` (`userid`),
  KEY `typeuseridindex` (`type`,`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__acymailing_list`
--

INSERT INTO `#__acymailing_list` (`name`, `description`, `ordering`, `listid`, `published`, `userid`, `alias`, `color`, `visible`, `welmailid`, `unsubmailid`, `type`, `access_sub`, `access_manage`, `languages`, `startrule`, `category`) VALUES
('Newsletters', 'Receive our latest news', 1, 1, 1, 124, 'mailing_list', '#3366ff', 1, NULL, NULL, 'list', 'all', 'none', 'all', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_listcampaign`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_listcampaign` (
  `campaignid` smallint(5) unsigned NOT NULL,
  `listid` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`campaignid`,`listid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_listmail`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_listmail` (
  `listid` smallint(5) unsigned NOT NULL,
  `mailid` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`listid`,`mailid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_listsub`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_listsub` (
  `listid` smallint(5) unsigned NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `subdate` int(10) unsigned DEFAULT NULL,
  `unsubdate` int(10) unsigned DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`listid`,`subid`),
  KEY `subidindex` (`subid`),
  KEY `listidstatusindex` (`listid`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__acymailing_listsub`
--

INSERT INTO `#__acymailing_listsub` (`listid`, `subid`, `subdate`, `unsubdate`, `status`) VALUES
(1, 1, 1425452125, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_mail`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_mail` (
  `mailid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(250) NOT NULL,
  `body` longtext NOT NULL,
  `altbody` longtext NOT NULL,
  `published` tinyint(4) DEFAULT '1',
  `senddate` int(10) unsigned DEFAULT NULL,
  `created` int(10) unsigned DEFAULT NULL,
  `fromname` varchar(250) DEFAULT NULL,
  `fromemail` varchar(250) DEFAULT NULL,
  `replyname` varchar(250) DEFAULT NULL,
  `replyemail` varchar(250) DEFAULT NULL,
  `type` enum('news','autonews','followup','unsub','welcome','notification','joomlanotification') NOT NULL DEFAULT 'news',
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `userid` int(10) unsigned DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `attach` text,
  `html` tinyint(4) NOT NULL DEFAULT '1',
  `tempid` smallint(6) NOT NULL DEFAULT '0',
  `key` varchar(200) DEFAULT NULL,
  `frequency` varchar(50) DEFAULT NULL,
  `params` text,
  `sentby` int(10) unsigned DEFAULT NULL,
  `metakey` text,
  `metadesc` text,
  `filter` text,
  `language` varchar(50) NOT NULL DEFAULT '',
  `abtesting` varchar(250) DEFAULT NULL,
  `thumb` varchar(250) DEFAULT NULL,
  `summary` text NOT NULL,
  PRIMARY KEY (`mailid`),
  KEY `senddate` (`senddate`),
  KEY `typemailidindex` (`type`,`mailid`),
  KEY `useridindex` (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `#__acymailing_mail`
--

INSERT INTO `#__acymailing_mail` (`mailid`, `subject`, `body`, `altbody`, `published`, `senddate`, `created`, `fromname`, `fromemail`, `replyname`, `replyemail`, `type`, `visible`, `userid`, `alias`, `attach`, `html`, `tempid`, `key`, `frequency`, `params`, `sentby`, `metakey`, `metadesc`, `filter`, `language`, `abtesting`, `thumb`, `summary`) VALUES
(1, 'New Subscriber on your website : {user:email}', '<p>Hello {subtag:name},</p><p>A new user has been created in AcyMailing : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_created', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(2, 'A User unsubscribed from all your lists : {user:email}', '<p>Hello {subtag:name},</p><p>The user {user:name} : {user:email} unsubscribed from all your lists</p><p>Subscription : {user:subscription}</p><p>{survey}</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_unsuball', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(3, 'A User unsubscribed : {user:email}', '<p>Hello {subtag:name},</p><p>The user {user:name} : {user:email} unsubscribed from your list</p><p>Subscription : {user:subscription}</p><p>{survey}</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_unsub', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(4, 'A User refuses to receive e-mails from your website : {user:email}', '<p>The User {user:name} : {user:email} refuses to receive any e-mail anymore from your website.</p><p>Subscription : {user:subscription}</p><p>{survey}</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_refuse', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(5, 'New contact from your website : {user:email}', '<p>Hello {subtag:name},</p><p>A user submitted the form : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_contact', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(6, 'A user subscribed or modified his subscription : {user:email}', '<p>Hello {subtag:name},</p><p>A user submitted the form : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_contact_menu', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(7, 'A user confirmed his subscription : {user:email}', '<p>Hello {subtag:name},</p><p>A user confirmed his subscription : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_confirm', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(8, '{subtag:name|ucfirst}, {trans:PLEASE_CONFIRM_SUB}', '<div style="text-align: center; width: 100%; background-color: #ffffff;">\r\n			<table style="text-align:justify; margin:auto; background-color:#ebebeb; border:1px solid #e7e7e7" border="0" cellspacing="0" cellpadding="0" width="600" align="center" bgcolor="#ebebeb">\r\n			<tbody>\r\n			<tr style="line-height: 0px;">\r\n			<td style="line-height: 0px;" height="38px"><img src="media/com_acymailing/templates/newsletter-4/top.png" border="0" alt=" - - - " /></td>\r\n			</tr>\r\n			<tr>\r\n			<td style="text-align:center" width="600">\r\n			<table style="margin:auto;" border="0" cellspacing="0" cellpadding="0" width="520">\r\n			<tbody>\r\n			<tr>\r\n			<td style="background-color: #ffffff; border: 1px solid #dbdbdb; padding: 20px; width: 500px; margin: 15px auto; text-align: left;">\r\n			<h1>Hello {subtag:name|ucfirst},</h1>\r\n			<p>{trans:CONFIRM_MSG}<br /><br />{trans:CONFIRM_MSG_ACTIVATE}</p>\r\n			<br />\r\n			<p style="text-align:center;"><strong>{confirm}{trans:CONFIRM_SUBSCRIPTION}{/confirm}</strong></p>\r\n			</td>\r\n			</tr>\r\n			</tbody>\r\n			</table>\r\n			</td>\r\n			</tr>\r\n			<tr style="line-height: 0px;">\r\n			<td style="line-height: 0px;" height="40px"><img src="media/com_acymailing/templates/newsletter-4/bottom.png" border="0" alt=" - - - " /></td>\r\n			</tr>\r\n			</tbody>\r\n			</table>\r\n			</div>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'confirmation', NULL, 1, 1, NULL, NULL, 'a:3:{s:6:"action";s:7:"confirm";s:13:"actionbtntext";s:28:"{trans:CONFIRM_SUBSCRIPTION}";s:9:"actionurl";s:19:"{confirm}{/confirm}";}', NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(9, 'AcyMailing Cron Report {mainreport}', '<p>{report}</p><p>{detailreport}</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'report', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(10, 'Modify your subscription', '<p>Hello {subtag:name}, </p><p>You requested some changes on your subscription,</p><p>Please {modify}click here{/modify} to be identified as the owner of this account and then modify your subscription.</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'modif', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_queue`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_queue` (
  `senddate` int(10) unsigned NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `mailid` mediumint(8) unsigned NOT NULL,
  `priority` tinyint(3) unsigned DEFAULT '3',
  `try` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `paramqueue` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`subid`,`mailid`),
  KEY `listingindex` (`senddate`,`subid`),
  KEY `mailidindex` (`mailid`),
  KEY `orderingindex` (`priority`,`senddate`,`subid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_rules`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_rules` (
  `ruleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `ordering` smallint(6) DEFAULT NULL,
  `regex` text NOT NULL,
  `executed_on` text NOT NULL,
  `action_message` text NOT NULL,
  `action_user` text NOT NULL,
  `published` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`ruleid`),
  KEY `ordering` (`published`,`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_stats`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_stats` (
  `mailid` mediumint(8) unsigned NOT NULL,
  `senthtml` int(10) unsigned NOT NULL DEFAULT '0',
  `senttext` int(10) unsigned NOT NULL DEFAULT '0',
  `senddate` int(10) unsigned NOT NULL,
  `openunique` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `opentotal` int(10) unsigned NOT NULL DEFAULT '0',
  `bounceunique` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `fail` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `clicktotal` int(10) unsigned NOT NULL DEFAULT '0',
  `clickunique` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `unsub` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forward` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bouncedetails` text,
  PRIMARY KEY (`mailid`),
  KEY `senddateindex` (`senddate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_subscriber`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_subscriber` (
  `subid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(250) NOT NULL DEFAULT '',
  `created` int(10) unsigned DEFAULT NULL,
  `confirmed` tinyint(4) NOT NULL DEFAULT '0',
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `accept` tinyint(4) NOT NULL DEFAULT '1',
  `ip` varchar(100) DEFAULT NULL,
  `html` tinyint(4) NOT NULL DEFAULT '1',
  `key` varchar(250) DEFAULT NULL,
  `confirmed_date` int(10) unsigned NOT NULL DEFAULT '0',
  `confirmed_ip` varchar(100) DEFAULT NULL,
  `lastopen_date` int(10) unsigned NOT NULL DEFAULT '0',
  `lastopen_ip` varchar(100) DEFAULT NULL,
  `lastclick_date` int(10) unsigned NOT NULL DEFAULT '0',
  `lastsent_date` int(10) unsigned NOT NULL DEFAULT '0',
  `source` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`subid`),
  UNIQUE KEY `email` (`email`),
  KEY `userid` (`userid`),
  KEY `queueindex` (`enabled`,`accept`,`confirmed`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__acymailing_subscriber`
--

INSERT INTO `#__acymailing_subscriber` (`subid`, `email`, `userid`, `name`, `created`, `confirmed`, `enabled`, `accept`, `ip`, `html`, `key`, `confirmed_date`, `confirmed_ip`, `lastopen_date`, `lastopen_ip`, `lastclick_date`, `lastsent_date`, `source`) VALUES
(1, 'sdfsdf@dgdf.ghd', 124, 'Super User', 1423437544, 1, 1, 1, NULL, 1, NULL, 0, NULL, 0, NULL, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_template`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_template` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `description` text,
  `body` longtext,
  `altbody` longtext,
  `created` int(10) unsigned DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '1',
  `premium` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` smallint(5) unsigned DEFAULT '0',
  `namekey` varchar(50) NOT NULL,
  `styles` text,
  `subject` varchar(250) DEFAULT NULL,
  `stylesheet` text,
  `fromname` varchar(250) DEFAULT NULL,
  `fromemail` varchar(250) DEFAULT NULL,
  `replyname` varchar(250) DEFAULT NULL,
  `replyemail` varchar(250) DEFAULT NULL,
  `thumb` varchar(250) DEFAULT NULL,
  `readmore` varchar(250) DEFAULT NULL,
  `access` varchar(250) NOT NULL DEFAULT 'all',
  `category` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`tempid`),
  UNIQUE KEY `namekey` (`namekey`),
  KEY `orderingindex` (`ordering`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `#__acymailing_template`
--

INSERT INTO `#__acymailing_template` (`tempid`, `name`, `description`, `body`, `altbody`, `created`, `published`, `premium`, `ordering`, `namekey`, `styles`, `subject`, `stylesheet`, `fromname`, `fromemail`, `replyname`, `replyemail`, `thumb`, `readmore`, `access`, `category`) VALUES
(1, 'Notification template', '', '<div style="text-align: center; width: 100%; background-color:#ffffff;">\r\n<div class="acymailing_online acyeditor_delete acyeditor_text" style="text-align:center">{readonline}This email contains graphics, so if you don''t see them, view it in your browser{/readonline}</div>\r\n\r\n<table align="center" border="0" cellpadding="0" cellspacing="0" class="w600" style="text-align: justify; margin: auto; width:600px">\r\n	<tbody class="acyeditor_sortable">\r\n		<tr style="line-height: 0px;" class="acyeditor_delete">\r\n			<td class="w600" colspan="5" style="background-color: #69b4c0;" valign="bottom" width="600"><img alt=" - - - " src="media/com_acymailing/templates/newsletter-4/images/top.png" /></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w40" style="background-color: #ebebeb;" width="40"></td>\r\n			<td class="acyeditor_text w520" colspan="3" height="80" style="text-align: left; background-color: rgb(235, 235, 235);" width="520"><img alt="-" src="media/com_acymailing/templates/newsletter-4/images/message_icon.png" style="float:left; margin-right:10px;" />\r\n				<h3>Topic of your message</h3>\r\n\r\n				<h4>Subtitle for your message</h4>\r\n			</td>\r\n			<td class="acyeditor_picture w40" style="background-color: #ebebeb;" width="40"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w40" style="background-color: #ebebeb;" width="40"></td>\r\n			<td class="w20" style="background-color: #fff;" width="20"></td>\r\n			<td class="w480" height="20" style="background-color:#fff;" width="480"></td>\r\n			<td class="w20" style="background-color: #fff;" width="20"></td>\r\n			<td class="w40" style="background-color: #ebebeb;" width="40"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w40" style="background-color: #ebebeb;" width="40"></td>\r\n			<td class="w20" style="background-color: #fff;" width="20"></td>\r\n			<td class="acyeditor_text w480 pict" style="background-color:#fff; text-align: left;" width="480">\r\n			<h1>Dear {subtag:name},</h1>\r\n			Your message here...<br />\r\n			</td>\r\n			<td class="w20" style="background-color: #fff;" width="20"></td>\r\n			<td class="w40" style="background-color: #ebebeb;" width="40"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w40" style="background-color: #ebebeb;" width="40"></td>\r\n			<td class="w20" style="background-color: #fff;" width="20"></td>\r\n			<td class="w480" height="20" style="background-color:#fff;" width="480"></td>\r\n			<td class="w20" style="background-color: #fff;" width="20"></td>\r\n			<td class="w40" style="background-color: #ebebeb;" width="40"></td>\r\n		</tr>\r\n		<tr style="line-height: 0px;" class="acyeditor_delete">\r\n			<td class="w600" colspan="5" style="background-color:#ebebeb;" width="600"><img alt=" - - - " src="media/com_acymailing/templates/newsletter-4/images/bottom.png" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div class="acyeditor_delete acyeditor_text" style="text-align:center">Not interested any more? {unsubscribe}Unsubscribe{/unsubscribe}</div>\r\n</div>', '', NULL, 1, 0, 1, 'newsletter-4', 'a:10:{s:6:"tag_h1";s:76:"color:#393939 !important; font-size:14px; font-weight:bold; margin:10px 0px;";s:6:"tag_h2";s:106:"color: #309fb3 !important; font-size: 14px; font-weight: normal; text-align:left; margin:0px; padding:0px;";s:6:"tag_h3";s:144:"color: #393939 !important; font-size: 18px; font-weight: bold; text-align:left; margin:0px; padding-bottom:5px; border-bottom:1px solid #bdbdbd;";s:6:"tag_h4";s:117:"color: #309fb3 !important; font-size: 14px; font-weight: bold; text-align:left; margin:0px; padding: 5px 0px 0px 0px;";s:5:"tag_a";s:71:"color:#309FB3; text-decoration:none; font-style:italic; cursor:pointer;";s:19:"acymailing_readmore";s:90:"font-size: 12px; color: #fff; background-color:#309fb3; font-weight:bold; padding:3px 5px;";s:17:"acymailing_online";s:52:"color:#a3a3a3; text-decoration:none; font-size:11px;";s:16:"acymailing_unsub";s:52:"color:#a3a3a3; text-decoration:none; font-size:11px;";s:8:"color_bg";s:7:"#ffffff";s:18:"acymailing_content";s:19:"text-align:justify;";}', NULL, 'div,table,p{font-family: Verdana, Arial, Helvetica, sans-serif; font-size:12px; text-align:justify; color:#8c8c8c; margin:0px}\r\ndiv.info{text-align:center;padding:10px;font-size:11px;color:#a3a3a3;}\r\n\r\n@media (min-width:10px){\r\n	table[class=w600], td[class=w600] { width: 320px !important;}\r\n	table[class=w520], td[class=w520] { width: 280px !important;}\r\n	table[class=w480], td[class=w480] { width: 260px !important;}\r\n	td[class=w40] { width: 20px !important;}\r\n	td[class=w20] { width: 10px !important;}\r\n	.w600 img {max-width:320px; height:auto !important}\r\n	.w480 img {max-width:260px; height:auto !important;}\r\n}\r\n\r\n@media (min-width:480px) {\r\n	table[class=w600], td[class=w600] { width: 480px !important;}\r\n	table[class=w520], td[class=w520] { width: 440px !important;}\r\n	table[class=w480], td[class=w480] { width: 420px !important;}\r\n	td[class=w40] { width: 20px !important;}\r\n	td[class=w20] { width: 10px !important;}\r\n	.w600 img {max-width:480px; height:auto !important}\r\n	.w480 img {max-width:420px;  height:auto !important;}\r\n}\r\n@media (min-width:600px){\r\n	table[class=w600], td[class=w600] { width: 600px !important;}\r\n	table[class=w520], td[class=w520] { width: 520px !important;}\r\n	table[class=w480], td[class=w480] { width: 480px !important;}\r\n	td[class=w40] { width40px !important;}\r\n	td[class=w20] { width: 20px !important;}\r\n	.w600 img {max-width:600px; height:auto !important}\r\n	.w480 img {max-width:480px;  height:auto !important;}\r\n}\r\n', NULL, NULL, NULL, NULL, 'media/com_acymailing/templates/newsletter-4/newsletter-4.png', '', 'all', ''),
(2, 'Newspaper', '', '<div align="center" style="width:100%; background-color:#454545; padding-bottom:20px; color:#ffffff;">\r\n<div class="acymailing_online acyeditor_delete acyeditor_text">{readonline}This e-mail contains graphics, if you don''t see them <strong>» view it online.</strong>{/readonline}</div>\r\n\r\n<table align="center" border="0" cellpadding="0" cellspacing="0" class="w600" style="margin:auto; background-color:#ffffff; color:#454545;" width="600">\r\n	<tbody  class="acyeditor_sortable">\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w30" style="background-color:#ffffff" width="30"></td>\r\n			<td class="acyeditor_text w540" style="font-family:Times New Roman, Times, serif; background-color:#ffffff; text-align:left" width="540">&nbsp;\r\n			<h1><img alt="logo" src="media/com_acymailing/templates/newsletter-5/images/logo.png" style="float: right; width: 107px; height: 70px;" /></h1>\r\n\r\n			<h1>Your title here</h1>\r\n\r\n			<h3>your subtitle</h3>\r\n			</td>\r\n			<td class="w30" style="line-height:0px; background-color:#ffffff" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w600" colspan="3" style="line-height:0px; background-color:#e4e4e4" valign="top" width="600"><img alt="---" src="media/com_acymailing/templates/newsletter-5/images/header.png" /></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="acyeditor_picture w600" colspan="3" style="line-height:0px; background-color:#ffffff" valign="top" width="600"><img alt="banner" src="media/com_acymailing/templates/newsletter-5/images/banner.png" /></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w600" colspan="3" style="line-height:0px;" valign="top" width="600"><img alt="---" src="media/com_acymailing/templates/newsletter-5/images/separator.png" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class="w30" style="background-color:#ffffff" width="30"></td>\r\n			<td class="acyeditor_text w540" style="text-align:justify; color:#575757; font-family:Times New Roman, Times, serif; font-size:13px; background-color:#ffffff" width="540">\r\n				<div>This issue will present the 5 last articles.<br />\r\n				{tableofcontents}<br />\r\n				{autocontent:|max:5|order:id,DESC|type:intro|link|pict:1}</div>\r\n			</td>\r\n			<td class="w30" style="background-color:#ffffff" width="30"></td>\r\n		</tr>\r\n		<tr style="line-height: 0px;">\r\n			<td class="w600" colspan="3" style="background-color:#ffffff" width="600"><img alt="--" src="media/com_acymailing/templates/newsletter-5/images/footer1.png" width="600" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class="acyfooter acyeditor_text w600" colspan="3" height="25" style="text-align:center; background-color:#ebebeb;  color:#454545; font-family:Times New Roman, Times, serif; font-size:13px" width="600"><a href="#">www.mywebsite.com</a> | <a href="#">contact</a> | <a href="#">Facebook</a> | <a href="#">Twitter</a></td>\r\n		</tr>\r\n		<tr style="line-height: 0px;">\r\n			<td class="w600" colspan="3" style="background-color:#454545;" width="600"><img alt="--" src="media/com_acymailing/templates/newsletter-5/images/footer2.png" width="600" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div class="acymailing_unsub acyeditor_delete acyeditor_text">{unsubscribe}If you''re not interested any more <strong>» unsubscribe</strong>{/unsubscribe}</div>\r\n</div>\r\n', '', NULL, 1, 0, 2, 'newsletter-5', 'a:10:{s:6:"tag_h1";s:71:"color:#454545 !important; font-size:24px; font-weight:bold; margin:0px;";s:6:"tag_h2";s:145:"color:#b20000 !important; font-size:18px; font-weight:bold; margin:0px; margin-bottom:10px; padding-bottom:4px; border-bottom: 1px solid #d6d6d6;";s:6:"tag_h3";s:76:"color:#b20101 !important; font-weight:bold; font-size:18px; margin:10px 0px;";s:6:"tag_h4";s:67:"color:#e52323 !important; font-weight:bold; margin:0px; padding:0px";s:5:"tag_a";s:65:"cursor:pointer; color:#9d0000; text-decoration:none; border:none;";s:19:"acymailing_readmore";s:152:"cursor:pointer; color:#ffffff; background-color:#9d0000; border-top:1px solid #9d0000; border-bottom:1px solid #9d0000; padding:3px 5px; font-size:13px;";s:17:"acymailing_online";s:148:"color:#dddddd; text-decoration:none; font-size:13px; margin:10px; text-align:center; font-family:Times New Roman, Times, serif; padding-bottom:10px;";s:8:"color_bg";s:7:"#454545";s:18:"acymailing_content";s:0:"";s:16:"acymailing_unsub";s:131:"color:#dddddd; text-decoration:none; font-size:13px; text-align:center; font-family:Times New Roman, Times, serif; padding-top:10px";}', NULL, '.acyfooter a{\r\n	color:#454545;\r\n}\r\n.dark{\r\n	color:#454545;\r\n	font-weight:bold;\r\n}\r\ndiv,table,p{font-family:"Times New Roman", Times, serif;font-size:13px;color:#575757;}\r\n\r\n\r\n\r\n@media (min-width:10px){\r\n	table[class=w600], td[class=w600] { width:320px !important; }\r\n	table[class=w540], td[class=w540] { width:260px !important; }\r\n	td[class=w30] { width:30px !important; }\r\n	.w600 img {max-width:320px; height:auto !important; }\r\n	.w540 img {max-width:260px; height:auto !important; }\r\n}\r\n\r\n@media (min-width: 480px){\r\n	table[class=w600], td[class=w600] { width:480px !important; }\r\n	table[class=w540], td[class=w540] { width:420px !important; }\r\n	td[class=w30] { width:30px !important; }\r\n	.w600 img {max-width:480px; height:auto !important; }\r\n	.w540 img {max-width:420px; height:auto !important; }\r\n}\r\n\r\n@media (min-width:600px){\r\n	table[class=w600], td[class=w600] { width:600px !important; }\r\n	table[class=w540], td[class=w540] { width:540px !important; }\r\n	td[class=w30] { width:30px !important; }\r\n	.w600 img     {max-width:600px; height:auto !important; }\r\n	.w540 img {max-width:540px; height:auto !important; }\r\n}\r\n', NULL, NULL, NULL, NULL, 'media/com_acymailing/templates/newsletter-5/newsletter-5.png', '', 'all', ''),
(3, 'Build Bio', '', '<div align="center" style="width:100%; background-color:#3c3c3c; padding-bottom:20px; color:#ffffff;">\r\n<div class="acymailing_online acyeditor_delete acyeditor_text">{readonline}This e-mail contains graphics, if you don''t see them <strong>» view it online.</strong>{/readonline}</div>\r\n\r\n<table align="center" border="0" cellpadding="0" cellspacing="0" class="w600" style="margin:auto; background-color:#ffffff; color:#575757;" width="600">\r\n	<tbody class="acyeditor_sortable">\r\n		<tr class="acyeditor_delete">\r\n			<td class="w600" colspan="3" style="line-height:0px; background-color:#eeeeee" valign="bottom" width="600"><img alt="mail" height="41" src="media/com_acymailing/templates/newsletter-6/images/header.png" width="600" /></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w30" style="color:#ffffff;" width="30"></td>\r\n			<td class="acyeditor_picture w540" style="line-height:0px; background-color:#ffffff; text-align:center" width="540"><img alt="" src="media/com_acymailing/templates/newsletter-6/images/banner.png" style="width: 540px; height: 122px;" /></td>\r\n			<td class="w30" height="122" style="background-color:#ffffff" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w30" style="background-color:#b9cf00; color:#ffffff;" width="30"></td>\r\n			<td class="acyeditor_text w540" height="25" style="text-align:right; background-color:#b9cf00; color:#ffffff;" width="540"><span class="hide">Newsletter</span> {date:3}</td>\r\n			<td class="w30" style="background-color:#b9cf00; color:#ffffff;" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w600" colspan="3" height="25" style="background-color:#ffffff" width="600"></td>\r\n		</tr>\r\n		<tr>\r\n			<td class="w30" style="background-color:#ffffff" width="30"></td>\r\n			<td class="acyeditor_text w540" style="text-align:justify; color:#575757; background-color:#ffffff" width="540"><span class="intro">Hello {subtag:name},</span><br />\r\n			<br />\r\n			Your introduction text here\r\n			<br />\r\n			<h2>Your title</h2>\r\n			<strong>Your catchphrase</strong><br />\r\n			Your content here <a href="#">with some link</a><br />\r\n			<br />\r\n			More content<br />\r\n			<br />\r\n			<span class="acymailing_readmore">Read More</span>\r\n\r\n			<h2>Another title</h2>\r\n			<img alt="picture" height="160" src="media/com_acymailing/templates/newsletter-6/images/picture.png" style="float:left;" width="193" /> <strong>Another catchphrase</strong> Some content and <a href="#">another link</a><br />\r\n			<br />\r\n			More content<br />\r\n			<br />\r\n			<span class="acymailing_readmore">Read More</span></td>\r\n			<td class="w30" style="background-color:#ffffff" width="30"></td>\r\n		</tr>\r\n		<tr style="line-height: 0px;" class="acyeditor_delete">\r\n			<td class="w600" colspan="3" style="line-height:0px; background-color:#efefef;" valign="top" width="600"><img alt="--" height="18" src="media/com_acymailing/templates/newsletter-6/images/footer1.png" width="600" /></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w30" height="20" style="line-height:0px; background-color:#efefef;" width="30"></td>\r\n			<td class="acyfooter acyeditor_text w540" style="text-align:right; background-color:#efefef; color:#575757;" width="540"><a href="#">www.mywebsite.com</a> | <a href="#">Contact</a><a href="#"><img alt="message" class="hide" src="media/com_acymailing/templates/newsletter-6/images/mail.png" style="border: medium none; width: 35px; height: 20px;" /></a></td>\r\n			<td class="w30" height="20" style="line-height:0px; background-color:#efefef;" width="30"></td>\r\n		</tr>\r\n		<tr style="line-height: 0px;" class="acyeditor_delete">\r\n			<td class="w600" colspan="3" style="background-color:#efefef; line-height:0px;" valign="top" width="600"><img alt="--" height="24" src="media/com_acymailing/templates/newsletter-6/images/footer2.png" width="600" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div class="acymailing_unsub acyeditor_delete acyeditor_text" >{unsubscribe}If you''re not interested any more <strong>» unsubscribe</strong>{/unsubscribe}</div>\r\n</div>', '', NULL, 1, 0, 3, 'newsletter-6', 'a:9:{s:6:"tag_h1";s:69:"font-weight:bold; font-size:14px;color:#3c3c3c !important;margin:0px;";s:6:"tag_h2";s:129:"color:#b9cf00 !important; font-size:14px; font-weight:bold; margin-top:20px; border-bottom:1px solid #d6d6d6; padding-bottom:4px;";s:6:"tag_h3";s:149:"color:#7e7e7e !important; font-size:14px; font-weight:bold; margin:20px 0px 0px 0px; border-bottom:1px solid #d6d6d6; padding-bottom:0px 0px 4px 0px;";s:6:"tag_h4";s:84:"color:#879700 !important; font-size:12px; font-weight:bold; margin:0px; padding:0px;";s:8:"color_bg";s:7:"#3c3c3c";s:5:"tag_a";s:65:"cursor:pointer; color:#a2b500; text-decoration:none; border:none;";s:17:"acymailing_online";s:91:"color:#dddddd; text-decoration:none; font-size:11px; text-align:center; padding-bottom:10px";s:16:"acymailing_unsub";s:88:"color:#dddddd; text-decoration:none; font-size:11px; text-align:center; padding-top:10px";s:19:"acymailing_readmore";s:73:"cursor:pointer; color:#ffffff; background-color:#b9cf00; padding:3px 5px;";}', NULL, 'table, div, p{\r\n	font-family: Verdana, Arial, Helvetica, sans-serif;\r\n	font-size:11px;\r\n	color:#575757;\r\n}\r\n.intro{\r\n	font-weight:bold;\r\n	font-size:12px;}\r\n\r\n.acyfooter a{\r\n	color:#575757;}\r\n\r\n@media (min-width: 10px){\r\n	table[class=w600], td[class=w600]  { width:320px !important; }\r\n	table[class=w540], td[class=w540]  { width:260px !important; }\r\n	td[class=w30] { width:30px !important; }\r\n	.w600 img{max-width:320px; height:auto !important}\r\n	.w540 img{max-width:260px; height:auto !important}\r\n}\r\n\r\n@media (min-width: 480px){\r\n	table[class=w600], td[class=w600]  { width:480px !important; }\r\n	table[class=w540], td[class=w540]  { width:420px !important; }\r\n	td[class=w30] { width:30px !important; }\r\n	.w600 img{max-width:480px; height:auto !important}\r\n	.w540 img{max-width:420px; height:auto !important}\r\n}\r\n\r\n@media (min-width:600px){\r\n	table[class=w600], td[class=w600]  { width:600px !important; }\r\n	table[class=w540], td[class=w540]  { width:540px !important; }\r\n	td[class=w30] { width:30px !important; }\r\n	.w600 img{max-width:600px; height:auto !important}\r\n	.w540 img{max-width:540px; height:auto !important}\r\n}\r\n', NULL, NULL, NULL, NULL, 'media/com_acymailing/templates/newsletter-6/newsletter-6.png', '', 'all', ''),
(4, 'Technology', '', '<div align="center" style="width:100%; background-color:#575757; padding-bottom:20px; color:#999999;">\r\n<table align="center" border="0" cellpadding="0" cellspacing="0" class="w600" style="background-color:#fff; color:#999999; margin:auto" width="600">\r\n	<tbody class="acyeditor_sortable">\r\n		<tr class="acyeditor_delete">\r\n			<td class="w30" style="background-color:#575757" width="30"></td>\r\n			<td class="acyeditor_text w540" style="text-align:right; color:#d2d1d1; background-color:#575757" width="540"><span class="acymailing_online">{readonline}If you can''t see this e-mail properly, <span style="text-decoration:underline">view it online</span>{/readonline}</span></td>\r\n			<td class="w30" style="background-color:#575757" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="acyeditor_picture w600" colspan="3" style="line-height:0px; background-color:#575757" valign="bottom" width="600"><img alt="--" src="media/com_acymailing/templates/technology_resp/images/shadowtop.jpg" /></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="acyeditor_picture w600" colspan="3" style="line-height:0px; background-color:#f5f5f5" width="600"><img alt="--" src="media/com_acymailing/templates/technology_resp/images/top.jpg" /></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w30" height="32" style="background-color:#f5f5f5; border-bottom:1px solid #ddd" width="30"></td>\r\n			<td class="acyeditor_text links w540" style="background-color:#f5f5f5; border-bottom:1px solid #ddd; text-align:right; color:#ababab" width="540"><a href="#"><img alt="mail" src="media/com_acymailing/templates/technology_resp/images/mail.jpg" style="float:right; border:none" /></a> Newsletter {mailid} | {date:%B %Y} |&nbsp; <a href="#">www.acyba.com</a> |</td>\r\n			<td class="w30" height="32" style="background-color:#f5f5f5; border-bottom:1px solid #ddd" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w600" colspan="3" height="16" width="600"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w30" width="30"></td>\r\n			<td class="acyeditor_text w540" width="540"><img alt="picture" src="media/com_acymailing/templates/technology_resp/images/pic1.jpg" style="float:right" />\r\n			<h1>Your title !</h1>\r\n\r\n			<h3>Your catchphrase</h3>\r\n			Your introduction content here</td>\r\n			<td class="w30" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w30" style="background-color:#fafafa" width="30"></td>\r\n			<td class="acyeditor_picture w540" style="background-color:#fafafa; line-height:0px" width="540"><img alt="---" src="media/com_acymailing/templates/technology_resp/images/separator1.jpg" /></td>\r\n			<td class="w30" style="background-color:#fafafa" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w30" style="background-color:#fafafa" width="30"></td>\r\n			<td class="acyeditor_text w540" style="background-color:#fafafa; color:#999999" width="540">\r\n			<h2>Your subtitle</h2>\r\n			<img alt="picture" src="media/com_acymailing/templates/technology_resp/images/pic2.jpg" style="float:left" />\r\n			<h3>Your catchphrase</h3>\r\n			Your content here<br />\r\n			<a href="#">Some link</a> and some content<br />\r\n			<br />\r\n			<img alt="buy this product" src="media/com_acymailing/templates/technology_resp/images/buyproduct.jpg" /><br />\r\n			<br />\r\n			<br />\r\n			<br />\r\n			&nbsp;\r\n			<h2>Another subtitle</h2>\r\n			<img alt="picture" src="media/com_acymailing/templates/technology_resp/images/pic3.jpg" style="float:right" />\r\n			<h3>Another catchphrase</h3>\r\n			Other content<br />\r\n			<br />\r\n			<img alt="buy this product" src="media/com_acymailing/templates/technology_resp/images/buyproduct.jpg" /></td>\r\n			<td class="w30" style="background-color:#fafafa" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w30" style="background-color:#fafafa" width="30"></td>\r\n			<td class="acyeditor_picture w540" style="background-color:#fafafa; line-height:0px" width="540"><img alt="---" src="media/com_acymailing/templates/technology_resp/images/separator2.jpg" /></td>\r\n			<td class="w30" style="background-color:#fafafa" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w600" colspan="3" height="16" width="600"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w30" width="30"></td>\r\n			<td class="acyeditor_text special w540" style="color:#999999" width="540">\r\n			<h2>Best product of the month</h2>\r\n\r\n			<h3>Lorem ipsum dolor sit amet.</h3>\r\n			Liget, volutpat esvft sem. Praesent auctor posuere orci, sit amet molee. Integer nec scelerisque quam. Lore uctor posum ipsum doLiget, volutpat esvft sem. Praesent auctor posuere orci, sit amet molee. Integer nec scelerisque quam. Lore uctor posum ipsum dolor sit amesent.<br />\r\n			<br />\r\n			<img alt="read more" src="media/com_acymailing/templates/technology_resp/images/readmore.jpg" style="border:none" /></td>\r\n			<td class="w30" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w600" colspan="3" height="16" width="600"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w30" height="30" style="background-color:#f5f5f5; border-top:1px solid #ddd" width="30"></td>\r\n			<td class="acyeditor_text w540" height="30" style="background-color:#f5f5f5; border-top:1px solid #ddd; text-align:right; color:#ababab" valign="bottom" width="540">Follow us | <img alt="facebook" src="media/com_acymailing/templates/technology_resp/images/facebook.jpg" style="border:none" /> <img alt="twitter" src="media/com_acymailing/templates/technology_resp/images/twitter.jpg" style="border:none" /> <img alt="pinterest" src="media/com_acymailing/templates/technology_resp/images/pinterest.jpg" style="border:none" /> <img alt="rss" src="media/com_acymailing/templates/technology_resp/images/rss.jpg" style="border:none" /></td>\r\n			<td class="w30" height="30" style="background-color:#f5f5f5; border-top:1px solid #ddd" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="acyeditor_picture w600" colspan="3" style="line-height:0px; background-color:#f5f5f5" width="600"><img alt="--" src="media/com_acymailing/templates/technology_resp/images/bottom.jpg" /></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="acyeditor_picture w600" colspan="3" style="line-height:0px; background-color:#575757" valign="bottom" width="600"><img alt="--" src="media/com_acymailing/templates/technology_resp/images/shadowbottom.jpg" /></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w30" style="background-color:#575757" width="30"></td>\r\n			<td class="acyeditor_text w540" style="text-align:right; color:#d2d1d1; background-color:#575757" width="540"><span class="acymailing_unsub">{unsubscribe}If you don''t want to receive our news anymore, <span style="text-decoration:underline">unsubscribe</span>{/unsubscribe} </span></td>\r\n			<td class="w30" style="background-color:#575757" width="30"></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', '', NULL, 1, 0, 4, 'technology_resp', 'a:9:{s:6:"tag_h1";s:104:"font-size:20px; margin:0px; margin-bottom:15px; padding:0px; font-weight:bold; color:#01bbe5 !important;";s:6:"tag_h2";s:165:"font-size:12px; font-weight:bold; color:#565656 !important; text-transform:uppercase; margin:10px 0px; padding:0px; padding-bottom:5px; border-bottom:1px solid #ddd;";s:6:"tag_h3";s:104:"color:#565656 !important; font-weight:bold; font-size:12px; margin:0px; margin-bottom:10px; padding:0px;";s:6:"tag_h4";s:0:"";s:8:"color_bg";s:7:"#575757";s:5:"tag_a";s:62:"cursor:pointer;color:#01bbe5;text-decoration:none;border:none;";s:17:"acymailing_online";s:30:"color:#d2d1d1; cursor:pointer;";s:16:"acymailing_unsub";s:30:"color:#d2d1d1; cursor:pointer;";s:19:"acymailing_readmore";s:88:"cursor:pointer; font-weight:bold; color:#fff; background-color:#01bbe5; padding:2px 5px;";}', NULL, 'table, div, p {\r\n	font-family:Arial, Helvetica, sans-serif;\r\n	font-size:12px;\r\n}\r\np{margin:0px; padding:0px}\r\n\r\n.special h2{font-size:18px;\r\n	margin:0px;\r\n	margin-bottom:15px;\r\n	padding:0px;\r\n	font-weight:bold;\r\n	color:#01bbe5 !important;\r\n	text-transform:none;\r\n	border:none}\r\n\r\n.links a{color:#ababab}\r\n\r\n@media (min-width:10px){\r\n	table[class=w600], td[class=w600] { width:320px !important;}\r\n	table[class=w540], td[class=w540] { width:260px !important;}\r\n	td[class=w30] { width:30px !important;}\r\n	.w600 img {max-width:320px; height:auto !important}\r\n	.w540 img {max-width:260px; height:auto !important}\r\n}\r\n\r\n@media (min-width: 480px){\r\n	table[class=w600], td[class=w600] { width:480px !important;}\r\n	table[class=w540], td[class=w540] { width:420px !important;}\r\n	td[class=w30] { width:30px !important;}\r\n	.w600 img {max-width:480px; height:auto !important}\r\n	.w540 img {max-width:420px; height:auto !important}\r\n}\r\n\r\n@media (min-width:600px){\r\n	table[class=w600], td[class=w600] { width:600px !important;}\r\n	table[class=w540], td[class=w540] { width:540px !important;}\r\n	td[class=w30] { width:30px !important;}\r\n	.w600 img {max-width:600px; height:auto !important}\r\n	.w540 img {max-width:540px; height:auto !important}\r\n}\r\n', NULL, NULL, NULL, NULL, 'media/com_acymailing/templates/technology_resp/thumb.jpg', '', 'all', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_url`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_url` (
  `urlid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`urlid`),
  KEY `url` (`url`(250))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_urlclick`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_urlclick` (
  `urlid` int(10) unsigned NOT NULL,
  `mailid` mediumint(8) unsigned NOT NULL,
  `click` smallint(5) unsigned NOT NULL DEFAULT '0',
  `subid` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`urlid`,`mailid`,`subid`),
  KEY `dateindex` (`date`),
  KEY `mailidindex` (`mailid`),
  KEY `subidindex` (`subid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_userstats`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_userstats` (
  `mailid` mediumint(8) unsigned NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `html` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `sent` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `senddate` int(10) unsigned NOT NULL,
  `open` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `opendate` int(11) NOT NULL,
  `bounce` tinyint(4) NOT NULL DEFAULT '0',
  `fail` tinyint(4) NOT NULL DEFAULT '0',
  `ip` varchar(100) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `browser_version` tinyint(3) unsigned DEFAULT NULL,
  `is_mobile` tinyint(3) unsigned DEFAULT NULL,
  `mobile_os` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mailid`,`subid`),
  KEY `senddateindex` (`senddate`),
  KEY `subidindex` (`subid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__assets`
--

CREATE TABLE IF NOT EXISTS `#__assets` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=189 ;

--
-- Dumping data for table `#__assets`
--

INSERT INTO `#__assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 200, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":[],"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 2, 3, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 4, 11, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 12, 13, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 14, 15, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 16, 17, 1, 'com_config', 'com_config', '{}'),
(7, 1, 18, 27, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(8, 1, 28, 71, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 72, 73, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 74, 75, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 76, 77, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 78, 79, 1, 'com_login', 'com_login', '{}'),
(13, 1, 80, 81, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 82, 83, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 84, 85, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1},"core.edit":[],"core.edit.state":[]}'),
(16, 1, 86, 87, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 28, 27, 0, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 90, 91, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 92, 99, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(20, 1, 100, 101, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 102, 103, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 104, 105, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 106, 107, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 108, 111, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 112, 121, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1,"10":0,"12":0},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
(26, 1, 122, 123, 1, 'com_wrapper', 'com_wrapper', '{}'),
(33, 1, 184, 185, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 8, 43, 48, 2, 'com_content.category.9', 'Uncategorised', '{"core.create":{"10":0,"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(35, 3, 7, 8, 2, 'com_banners.category.10', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(36, 7, 23, 24, 2, 'com_contact.category.11', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(37, 19, 95, 96, 2, 'com_newsfeeds.category.12', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(38, 25, 119, 120, 2, 'com_weblinks.category.13', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 3, 9, 10, 2, 'com_banners.category.15', 'Sample Data-Banners', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 19, 97, 98, 2, 'com_newsfeeds.category.17', 'Sample Data-Newsfeeds', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(100, 8, 51, 52, 2, 'com_content.category.71', 'Milky Way', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(168, 34, 44, 45, 3, 'com_content.article.67', 'What''s New in 1.5?', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(169, 24, 109, 110, 2, 'com_users.category.77', 'Uncategorised', ''),
(173, 1, 186, 187, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(174, 1, 188, 189, 1, 'com_k2', 'com_k2', '{"core.admin":[],"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(175, 8, 55, 62, 2, 'com_content.category.78', 'Chocolatier''s Table Luxe', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(176, 175, 56, 57, 3, 'com_content.article.68', 'How to Marinate and Grill Steaks ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(177, 175, 58, 59, 3, 'com_content.article.69', 'How to Marinate and Grill Steaks  (2)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(178, 175, 60, 61, 3, 'com_content.article.70', 'How to Marinate and Grill Steaks  (3)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(179, 8, 63, 70, 2, 'com_content.category.79', 'Testimonial', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(180, 179, 64, 65, 3, 'com_content.article.71', 'Testimonial', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(181, 179, 66, 67, 3, 'com_content.article.72', 'Testimonial (2)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(182, 179, 68, 69, 3, 'com_content.article.73', 'Testimonial (3)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(183, 34, 46, 47, 3, 'com_content.article.74', 'About us', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(184, 1, 190, 191, 1, 'com_acymailing', 'acymailing', '{}'),
(185, 1, 192, 193, 1, 'com_tags', 'com_tags', '{}'),
(186, 1, 194, 195, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(187, 1, 196, 197, 1, 'com_ajax', 'com_ajax', '{}'),
(188, 1, 198, 199, 1, 'com_postinstall', 'com_postinstall', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `#__associations`
--

CREATE TABLE IF NOT EXISTS `#__associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__banners`
--

CREATE TABLE IF NOT EXISTS `#__banners` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `#__banners`
--

INSERT INTO `#__banners` (`id`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `clickurl`, `state`, `catid`, `description`, `custombannercode`, `sticky`, `ordering`, `metakey`, `params`, `own_prefix`, `metakey_prefix`, `purchase_type`, `track_clicks`, `track_impressions`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `reset`, `created`, `language`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `version`) VALUES
(2, 3, 0, 'Shop 1', 'shop-1', 0, 90, 2, 'http://shop.joomla.org/amazoncom-bookstores.html', 1, 15, 'Get books about Joomla! at the Joomla! Book Shop.', '', 0, 1, '', '{"imageurl":"images\\/banners\\/white.png","width":"","height":"","alt":"Joomla! Books"}', 0, '', -1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-01-01 00:00:01', 'en-GB', 0, '', '0000-00-00 00:00:00', 0, 1),
(3, 2, 0, 'Shop 2', 'shop-2', 0, 140, 2, 'http://shop.joomla.org', 1, 15, 'T Shirts, caps and more from the Joomla! Shop.', '', 0, 2, '', '{"imageurl":"images\\/banners\\/white.png","width":"","height":"","alt":"Joomla! Shop"}', 0, '', -1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-01-01 00:00:01', 'en-GB', 0, '', '0000-00-00 00:00:00', 0, 1),
(4, 1, 0, 'Support Joomla!', 'support-joomla', 0, 59, 1, 'http://contribute.joomla.org', 1, 15, 'Your contributions of time, talent and money make Joomla possible.', '', 0, 3, '', '{"imageurl":"images\\/banners\\/white.png","width":"","height":"","alt":""}', 0, '', -1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'en-GB', 0, '', '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__banner_clients`
--

CREATE TABLE IF NOT EXISTS `#__banner_clients` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `#__banner_clients`
--

INSERT INTO `#__banner_clients` (`id`, `name`, `contact`, `email`, `extrainfo`, `state`, `checked_out`, `checked_out_time`, `metakey`, `own_prefix`, `metakey_prefix`, `purchase_type`, `track_clicks`, `track_impressions`) VALUES
(1, 'Joomla!', 'Administrator', 'email@email.com', '', 1, 0, '0000-00-00 00:00:00', '', 0, '', -1, -1, -1),
(2, 'Shop', 'Example', 'example@example.com', '', 1, 0, '0000-00-00 00:00:00', '', 0, '', -1, 0, 0),
(3, 'Bookstore', 'Bookstore Example', 'example@example.com', '', 1, 0, '0000-00-00 00:00:00', '', 0, '', -1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__banner_tracks`
--

CREATE TABLE IF NOT EXISTS `#__banner_tracks` (
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
-- Table structure for table `#__categories`
--

CREATE TABLE IF NOT EXISTS `#__categories` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=80 ;

--
-- Dumping data for table `#__categories`
--

INSERT INTO `#__categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 21, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 124, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(9, 34, 1, 13, 14, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 124, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*', 1),
(10, 35, 1, 11, 12, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 124, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(11, 36, 1, 7, 8, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 124, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(12, 37, 1, 5, 6, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 124, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(13, 38, 1, 1, 2, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 124, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(15, 40, 1, 9, 10, 1, 'sample-data-banners', 'com_banners', 'Sample Data-Banners', 'sample-data-banners', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 124, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(17, 42, 1, 3, 4, 1, 'sample-data-newsfeeds', 'com_newsfeeds', 'Sample Data-Newsfeeds', 'sample-data-newsfeeds', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 124, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(77, 169, 1, 15, 16, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 124, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(78, 175, 1, 17, 18, 1, 'chocolatier-s-table-luxe', 'com_content', 'Chocolatier''s Table Luxe', 'chocolatier-s-table-luxe', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 124, '2015-02-11 09:11:07', 0, '0000-00-00 00:00:00', 0, '*', 1),
(79, 179, 1, 19, 20, 1, 'testimonial', 'com_content', 'Testimonial', 'testimonial', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 124, '2015-02-27 01:46:47', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__contact_details`
--

CREATE TABLE IF NOT EXISTS `#__contact_details` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__contact_details`
--

INSERT INTO `#__contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `hits`) VALUES
(1, 'Contact', 'contact', '', '', '', '', '', '', '', '', '<p>2901 Marmora Road, Glassgow, Seattle, WA 98122-1090<br />Telephone: +1 1234-567-89000<br />FAX: +1 0123-4567-8900</p>', '', 'abc@abc.com', 0, 1, 124, '2015-03-11 02:43:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":false,"linkb_name":"","linkb":false,"linkc_name":"","linkc":false,"linkd_name":"","linkd":false,"linke_name":"","linke":false,"contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 11, 1, '', '', '', '', '', '*', '2015-03-11 02:09:30', 124, '', '2015-03-11 02:43:00', 124, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `#__content`
--

CREATE TABLE IF NOT EXISTS `#__content` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=75 ;

--
-- Dumping data for table `#__content`
--

INSERT INTO `#__content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(67, 168, 'What''s New in 1.5?', 'whats-new-in-15', '<p>This article deliberately archived as an example.</p><p>As with previous releases, Joomla! provides a unified and easy-to-use framework for delivering content for Web sites of all kinds. To support the changing nature of the Internet and emerging Web technologies, Joomla! required substantial restructuring of its core functionality and we also used this effort to simplify many challenges within the current user interface. Joomla! 1.5 has many new features.</p>\r\n<p style="margin-bottom: 0in;">In Joomla! 1.5, you''''ll notice:</p>\r\n<ul>\r\n<li>Substantially improved usability, manageability, and scalability far beyond the original Mambo foundations</li>\r\n<li>Expanded accessibility to support internationalisation, double-byte characters and right-to-left support for Arabic, Farsi, and Hebrew languages among others</li>\r\n<li>Extended integration of external applications through Web services</li>\r\n<li>Enhanced content delivery, template and presentation capabilities to support accessibility standards and content delivery to any destination</li>\r\n<li>A more sustainable and flexible framework for Component and Extension developers</li>\r\n<li>Backward compatibility with previous releases of Components, Templates, Modules, and other Extensions</li>\r\n</ul>', '', 2, 9, '2011-01-01 00:00:01', 124, 'Joomla! 1.5', '2011-01-01 00:00:01', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(68, 176, 'How to Marinate and Grill Steaks ', 'how-to-marinate-and-grill-steaks', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis massa eu nibh gravida ornare.</p>\r\n', '\r\n<p>Integer a pellentesque purus, vitae consectetur urna. Cras commodo suscipit magna in porttitor. Cras quis venenatis dolor. Nunc congue id libero ut feugiat. Donec mollis viverra consectetur.</p>', 1, 78, '2015-02-11 09:13:26', 124, '', '2015-02-11 09:49:46', 124, 0, '0000-00-00 00:00:00', '2015-02-11 09:13:26', '0000-00-00 00:00:00', '{"image_intro":"images\\/article_demo_image.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/article_demo_image.jpg","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 2, '', '', 1, 18, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(69, 177, 'How to Marinate and Grill Steaks  (2)', 'how-to-marinate-and-grill-steaks-2', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis massa eu nibh gravida ornare.</p>\r\n', '\r\n<p>Integer a pellentesque purus, vitae consectetur urna. Cras commodo suscipit magna in porttitor. Cras quis venenatis dolor. Nunc congue id libero ut feugiat. Donec mollis viverra consectetur.</p>', 1, 78, '2015-02-11 09:13:26', 124, '', '2015-02-11 09:50:06', 124, 0, '0000-00-00 00:00:00', '2015-02-11 09:13:26', '0000-00-00 00:00:00', '{"image_intro":"images\\/article_demo_image.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/article_demo_image.jpg","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(70, 178, 'How to Marinate and Grill Steaks  (3)', 'how-to-marinate-and-grill-steaks-3', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis massa eu nibh gravida ornare.</p>\r\n', '\r\n<p>Integer a pellentesque purus, vitae consectetur urna. Cras commodo suscipit magna in porttitor. Cras quis venenatis dolor. Nunc congue id libero ut feugiat. Donec mollis viverra consectetur.</p>', 1, 78, '2015-02-11 09:13:26', 124, '', '2015-02-11 09:50:26', 124, 0, '0000-00-00 00:00:00', '2015-02-11 09:13:26', '0000-00-00 00:00:00', '{"image_intro":"images\\/article_demo_image.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/article_demo_image.jpg","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(71, 180, 'Testimonial', 'testimonial', '<div class="testimonial">\r\n<div class="testimonial_text">Duis viverra aliquam quam vitae posuere. Sed ac vehicula nibh. Donec imperdiet adipiscing tortor, a euismod nisl. Vestibulum sit amet consectetur nisl, nec molestie dui. Donec vitae tincidunt ligula. Mauris convallis imperdiet risus</div>\r\n<div class="testimonial_users"><span class="testimonial_name1">Jimmy</span> <img src="images/testimonial_avt.png" border="0" alt="" /><span class="testimonial_name2">Terell</span></div>\r\n</div>', '', 1, 79, '2015-02-27 02:13:06', 124, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2015-02-27 02:13:06', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(72, 181, 'Testimonial (2)', 'testimonial-2', '<div class="testimonial">\r\n<div class="testimonial_text">Duis viverra aliquam quam vitae posuere. Sed ac vehicula nibh. Donec imperdiet adipiscing tortor, a euismod nisl. Vestibulum sit amet consectetur nisl, nec molestie dui. Donec vitae tincidunt ligula. Mauris convallis imperdiet risus</div>\r\n<div class="testimonial_users"><span class="testimonial_name1">Jimmy</span> <img src="images/testimonial_avt.png" border="0" alt="" /><span class="testimonial_name2">Terell</span></div>\r\n</div>', '', 1, 79, '2015-02-27 02:13:06', 124, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2015-02-27 02:13:06', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(73, 182, 'Testimonial (3)', 'testimonial-3', '<div class="testimonial">\r\n<div class="testimonial_text">Duis viverra aliquam quam vitae posuere. Sed ac vehicula nibh. Donec imperdiet adipiscing tortor, a euismod nisl. Vestibulum sit amet consectetur nisl, nec molestie dui. Donec vitae tincidunt ligula. Mauris convallis imperdiet risus</div>\r\n<div class="testimonial_users"><span class="testimonial_name1">Jimmy</span> <img src="images/testimonial_avt.png" border="0" alt="" /><span class="testimonial_name2">Terell</span></div>\r\n</div>', '', 1, 79, '2015-02-27 02:13:06', 124, '', '2015-02-27 02:20:54', 124, 0, '0000-00-00 00:00:00', '2015-02-27 02:13:06', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(74, 183, 'About us', 'about-us', '<div class="aboutUsPage">\r\n<h3 class="aboutUsTitle"><span class="firstText">Discover</span> irisbros restaurant</h3>\r\n<div class="aboutUsContent">\r\n<div class="row">\r\n<div class="col-md-4 col-sm-4 col-xs-12">\r\n<div class="aboutUsItem">\r\n<div class="aboutUsImg"><img src="images/aboutUsImg.png" border="0" alt="" /></div>\r\n<div class="aboutUsIcon"><img src="images/aboutUsImg_icon1.png" border="0" alt="" /></div>\r\n<div class="aboutUsItemTitle">Culinary Delight</div>\r\n<div class="aboutUsItemText">We promise an intimate and relaxed dining experience that offers something different to local and foreign patrons and ensures you enjoy a memorable food experience every time.</div>\r\n</div>\r\n</div>\r\n<div class="col-md-4 col-sm-4 col-xs-12">\r\n<div class="aboutUsItem">\r\n<div class="aboutUsImg"><img src="images/aboutUsImg.png" border="0" alt="" /></div>\r\n<div class="aboutUsIcon"><img src="images/aboutUsImg_icon2.png" border="0" alt="" /></div>\r\n<div class="aboutUsItemTitle">Culinary Delight</div>\r\n<div class="aboutUsItemText">We promise an intimate and relaxed dining experience that offers something different to local and foreign patrons and ensures you enjoy a memorable food experience every time.</div>\r\n</div>\r\n</div>\r\n<div class="col-md-4 col-sm-4 col-xs-12">\r\n<div class="aboutUsItem">\r\n<div class="aboutUsImg"><img src="images/aboutUsImg.png" border="0" alt="" /></div>\r\n<div class="aboutUsIcon"><img src="images/aboutUsImg_icon3.png" border="0" alt="" /></div>\r\n<div class="aboutUsItemTitle">Culinary Delight</div>\r\n<div class="aboutUsItemText">We promise an intimate and relaxed dining experience that offers something different to local and foreign patrons and ensures you enjoy a memorable food experience every time.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '', 1, 9, '2015-03-04 03:01:14', 124, '', '2015-03-04 03:27:11', 124, 124, '2015-03-04 03:27:11', '2015-03-04 03:01:14', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, '', '', 1, 164, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `#__contentitem_tag_map` (
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
-- Table structure for table `#__content_frontpage`
--

CREATE TABLE IF NOT EXISTS `#__content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__content_frontpage`
--

INSERT INTO `#__content_frontpage` (`content_id`, `ordering`) VALUES
(8, 5),
(24, 4),
(35, 7),
(50, 6),
(68, 1),
(69, 2),
(70, 3);

-- --------------------------------------------------------

--
-- Table structure for table `#__content_rating`
--

CREATE TABLE IF NOT EXISTS `#__content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__content_types`
--

CREATE TABLE IF NOT EXISTS `#__content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) NOT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10005 ;

--
-- Dumping data for table `#__content_types`
--

INSERT INTO `#__content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special": {"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special": {"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special": {"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special": {}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(10000, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(10001, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(10002, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(10003, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(10004, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `#__core_log_searches`
--

CREATE TABLE IF NOT EXISTS `#__core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__extensions`
--

CREATE TABLE IF NOT EXISTS `#__extensions` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10045 ;

--
-- Dumping data for table `#__extensions`
--

INSERT INTO `#__extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"0","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"0","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"1","sendpassword":"1","useractivation":"2","mail_to_admin":"1","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{"updatesource":"sts","customurl":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":"","filename":"simplepie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"24ef86d1d2110cba5dcd7f2fe286aaac"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-03-11 11:59:00","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.2","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
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
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
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
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"2.5.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2014","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.1.7","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"mode":"1","skin":"0","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `#__extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 0, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.1","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.1","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"March 2015","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.1","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(801, 'weblinks', 'package', 'pkg_weblinks', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'com_k2', 'component', 'com_k2', '', 1, 1, 0, 0, '{"legacy":false,"name":"COM_K2","type":"component","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"Thank you for installing K2 by JoomlaWorks, the powerful content extension for Joomla!","group":""}', '{"enable_css":"1","jQueryHandling":"1.8remote","backendJQueryHandling":"remote","userName":"1","userImage":"1","userDescription":"1","userURL":"1","userEmail":"0","userFeedLink":"0","userFeedIcon":"0","userItemCount":"10","userItemTitle":"1","userItemTitleLinked":"1","userItemDateCreated":"1","userItemImage":"1","userItemIntroText":"1","userItemCategory":"0","userItemTags":"0","userItemCommentsAnchor":"1","userItemReadMore":"1","userItemK2Plugins":"1","tagItemCount":"10","tagItemTitle":"1","tagItemTitleLinked":"1","tagItemDateCreated":"1","tagItemImage":"1","tagItemIntroText":"1","tagItemCategory":"0","tagItemReadMore":"1","tagItemExtraFields":"0","tagOrdering":"","tagFeedLink":"0","tagFeedIcon":"0","genericItemCount":"10","genericItemTitle":"1","genericItemTitleLinked":"1","genericItemDateCreated":"1","genericItemImage":"1","genericItemIntroText":"1","genericItemCategory":"1","genericItemReadMore":"1","genericItemExtraFields":"0","genericFeedLink":"0","genericFeedIcon":"0","feedLimit":"10","feedItemImage":"1","feedImgSize":"S","feedItemIntroText":"1","feedTextWordLimit":"","feedItemFullText":"1","feedItemTags":"0","feedItemVideo":"0","feedItemGallery":"0","feedItemAttachments":"0","feedBogusEmail":"","introTextCleanup":"0","introTextCleanupExcludeTags":"","introTextCleanupTagAttr":"","fullTextCleanup":"0","fullTextCleanupExcludeTags":"","fullTextCleanupTagAttr":"","xssFiltering":"0","linkPopupWidth":"900","linkPopupHeight":"600","imagesQuality":"100","itemImageXS":"100","itemImageS":"200","itemImageM":"400","itemImageL":"770","itemImageXL":"900","itemImageGeneric":"770","catImageWidth":"70","catImageDefault":"1","userImageWidth":"100","userImageDefault":"1","commenterImgWidth":"48","onlineImageEditor":"splashup","imageTimestamp":"0","imageMemoryLimit":"","socialButtonCode":"","twitterUsername":"","facebookImage":"Medium","comments":"1","commentsOrdering":"DESC","commentsLimit":"2","commentsFormPosition":"below","commentsPublishing":"1","commentsReporting":"2","commentsReportRecipient":"","inlineCommentsModeration":"0","gravatar":"1","antispam":"0","recaptchaForRegistered":"1","akismetForRegistered":"1","commentsFormNotes":"1","commentsFormNotesText":"","frontendEditing":"1","showImageTab":"1","showImageGalleryTab":"1","showVideoTab":"1","showExtraFieldsTab":"1","showAttachmentsTab":"1","showK2Plugins":"1","sideBarDisplayFrontend":"0","mergeEditors":"1","sideBarDisplay":"1","attachmentsFolder":"","hideImportButton":"0","googleSearch":"0","googleSearchContainer":"k2GoogleSearchContainer","K2UserProfile":"1","redirect":"435","adminSearch":"simple","cookieDomain":"","taggingSystem":"1","lockTags":"0","showTagFilter":"0","k2TagNorm":"0","k2TagNormCase":"lower","k2TagNormAdditionalReplacements":"","recaptcha_public_key":"","recaptcha_private_key":"","recaptcha_theme":"clean","recaptchaOnRegistration":"0","akismetApiKey":"","stopForumSpam":"0","stopForumSpamApiKey":"","showItemsCounterAdmin":"1","showChildCatItems":"1","disableCompactOrdering":"0","metaDescLimit":"150","enforceSEFReplacements":"0","SEFReplacements":"\\u00c0|A, \\u00c1|A, \\u00c2|A, \\u00c3|A, \\u00c4|A, \\u00c5|A, \\u00e0|a, \\u00e1|a, \\u00e2|a, \\u00e3|a, \\u00e4|a, \\u00e5|a, \\u0100|A, \\u0101|a, \\u0102|A, \\u0103|a, \\u0104|A, \\u0105|a, \\u00c7|C, \\u00e7|c, \\u0106|C, \\u0107|c, \\u0108|C, \\u0109|c, \\u010a|C, \\u010b|c, \\u010c|C, \\u010d|c, \\u00d0|D, \\u00f0|d, \\u010e|D, \\u010f|d, \\u0110|D, \\u0111|d, \\u00c8|E, \\u00c9|E, \\u00ca|E, \\u00cb|E, \\u00e8|e, \\u00e9|e, \\u00ea|e, \\u00eb|e, \\u0112|E, \\u0113|e, \\u0114|E, \\u0115|e, \\u0116|E, \\u0117|e, \\u0118|E, \\u0119|e, \\u011a|E, \\u011b|e, \\u011c|G, \\u011d|g, \\u011e|G, \\u011f|g, \\u0120|G, \\u0121|g, \\u0122|G, \\u0123|g, \\u0124|H, \\u0125|h, \\u0126|H, \\u0127|h, \\u00cc|I, \\u00cd|I, \\u00ce|I, \\u00cf|I, \\u00ec|i, \\u00ed|i, \\u00ee|i, \\u00ef|i, \\u0128|I, \\u0129|i, \\u012a|I, \\u012b|i, \\u012c|I, \\u012d|i, \\u012e|I, \\u012f|i, \\u0130|I, \\u0131|i, \\u0134|J, \\u0135|j, \\u0136|K, \\u0137|k, \\u0138|k, \\u0139|L, \\u013a|l, \\u013b|L, \\u013c|l, \\u013d|L, \\u013e|l, \\u013f|L, \\u0140|l, \\u0141|L, \\u0142|l, \\u00d1|N, \\u00f1|n, \\u0143|N, \\u0144|n, \\u0145|N, \\u0146|n, \\u0147|N, \\u0148|n, \\u0149|n, \\u014a|N, \\u014b|n, \\u00d2|O, \\u00d3|O, \\u00d4|O, \\u00d5|O, \\u00d6|O, \\u00d8|O, \\u00f2|o, \\u00f3|o, \\u00f4|o, \\u00f5|o, \\u00f6|o, \\u00f8|o, \\u014c|O, \\u014d|o, \\u014e|O, \\u014f|o, \\u0150|O, \\u0151|o, \\u0154|R, \\u0155|r, \\u0156|R, \\u0157|r, \\u0158|R, \\u0159|r, \\u015a|S, \\u015b|s, \\u015c|S, \\u015d|s, \\u015e|S, \\u015f|s, \\u0160|S, \\u0161|s, \\u017f|s, \\u0162|T, \\u0163|t, \\u0164|T, \\u0165|t, \\u0166|T, \\u0167|t, \\u00d9|U, \\u00da|U, \\u00db|U, \\u00dc|U, \\u00f9|u, \\u00fa|u, \\u00fb|u, \\u00fc|u, \\u0168|U, \\u0169|u, \\u016a|U, \\u016b|u, \\u016c|U, \\u016d|u, \\u016e|U, \\u016f|u, \\u0170|U, \\u0171|u, \\u0172|U, \\u0173|u, \\u0174|W, \\u0175|w, \\u00dd|Y, \\u00fd|y, \\u00ff|y, \\u0176|Y, \\u0177|y, \\u0178|Y, \\u0179|Z, \\u017a|z, \\u017b|Z, \\u017c|z, \\u017d|Z, \\u017e|z, \\u03b1|a, \\u03b2|b, \\u03b3|g, \\u03b4|d, \\u03b5|e, \\u03b6|z, \\u03b7|h, \\u03b8|th, \\u03b9|i, \\u03ba|k, \\u03bb|l, \\u03bc|m, \\u03bd|n, \\u03be|x, \\u03bf|o, \\u03c0|p, \\u03c1|r, \\u03c3|s, \\u03c4|t, \\u03c5|y, \\u03c6|f, \\u03c7|ch, \\u03c8|ps, \\u03c9|w, \\u0391|A, \\u0392|B, \\u0393|G, \\u0394|D, \\u0395|E, \\u0396|Z, \\u0397|H, \\u0398|Th, \\u0399|I, \\u039a|K, \\u039b|L, \\u039c|M, \\u039e|X, \\u039f|O, \\u03a0|P, \\u03a1|R, \\u03a3|S, \\u03a4|T, \\u03a5|Y, \\u03a6|F, \\u03a7|Ch, \\u03a8|Ps, \\u03a9|W, \\u03ac|a, \\u03ad|e, \\u03ae|h, \\u03af|i, \\u03cc|o, \\u03cd|y, \\u03ce|w, \\u0386|A, \\u0388|E, \\u0389|H, \\u038a|I, \\u038c|O, \\u038e|Y, \\u038f|W, \\u03ca|i, \\u0390|i, \\u03cb|y, \\u03c2|s, \\u0410|A, \\u04d0|A, \\u04d2|A, \\u04d8|E, \\u04da|E, \\u04d4|E, \\u0411|B, \\u0412|V, \\u0413|G, \\u0490|G, \\u0403|G, \\u0492|G, \\u04f6|G, y|Y, \\u0414|D, \\u0415|E, \\u0400|E, \\u0401|YO, \\u04d6|E, \\u04bc|E, \\u04be|E, \\u0404|YE, \\u0416|ZH, \\u04c1|DZH, \\u0496|ZH, \\u04dc|DZH, \\u0417|Z, \\u0498|Z, \\u04de|DZ, \\u04e0|DZ, \\u0405|DZ, \\u0418|I, \\u040d|I, \\u04e4|I, \\u04e2|I, \\u0406|I, \\u0407|JI, \\u04c0|I, \\u0419|Y, \\u048a|Y, \\u0408|J, \\u041a|K, \\u049a|Q, \\u049e|Q, \\u04a0|K, \\u04c3|Q, \\u049c|K, \\u041b|L, \\u04c5|L, \\u0409|L, \\u041c|M, \\u04cd|M, \\u041d|N, \\u04c9|N, \\u04a2|N, \\u04c7|N, \\u04a4|N, \\u040a|N, \\u041e|O, \\u04e6|O, \\u04e8|O, \\u04ea|O, \\u04a8|O, \\u041f|P, \\u04a6|PF, \\u0420|P, \\u048e|P, \\u0421|S, \\u04aa|S, \\u0422|T, \\u04ac|TH, \\u040b|T, \\u040c|K, \\u0423|U, \\u040e|U, \\u04f2|U, \\u04f0|U, \\u04ee|U, \\u04ae|U, \\u04b0|U, \\u0424|F, \\u0425|H, \\u04b2|H, \\u04ba|H, \\u0426|TS, \\u04b4|TS, \\u0427|CH, \\u04f4|CH, \\u04b6|CH, \\u04cb|CH, \\u04b8|CH, \\u040f|DZ, \\u0428|SH, \\u0429|SHT, \\u042a|A, \\u042b|Y, \\u04f8|Y, \\u042c|Y, \\u048c|Y, \\u042d|E, \\u04ec|E, \\u042e|YU, \\u042f|YA, \\u0430|a, \\u04d1|a, \\u04d3|a, \\u04d9|e, \\u04db|e, \\u04d5|e, \\u0431|b, \\u0432|v, \\u0433|g, \\u0491|g, \\u0453|g, \\u0493|g, \\u04f7|g, y|y, \\u0434|d, \\u0435|e, \\u0450|e, \\u0451|yo, \\u04d7|e, \\u04bd|e, \\u04bf|e, \\u0454|ye, \\u0436|zh, \\u04c2|dzh, \\u0497|zh, \\u04dd|dzh, \\u0437|z, \\u0499|z, \\u04df|dz, \\u04e1|dz, \\u0455|dz, \\u0438|i, \\u045d|i, \\u04e5|i, \\u04e3|i, \\u0456|i, \\u0457|ji, \\u04c0|i, \\u0439|y, \\u048b|y, \\u0458|j, \\u043a|k, \\u049b|q, \\u049f|q, \\u04a1|k, \\u04c4|q, \\u049d|k, \\u043b|l, \\u04c6|l, \\u0459|l, \\u043c|m, \\u04ce|m, \\u043d|n, \\u04ca|n, \\u04a3|n, \\u04c8|n, \\u04a5|n, \\u045a|n, \\u043e|o, \\u04e7|o, \\u04e9|o, \\u04eb|o, \\u04a9|o, \\u043f|p, \\u04a7|pf, \\u0440|p, \\u048f|p, \\u0441|s, \\u04ab|s, \\u0442|t, \\u04ad|th, \\u045b|t, \\u045c|k, \\u0443|u, \\u045e|u, \\u04f3|u, \\u04f1|u, \\u04ef|u, \\u04af|u, \\u04b1|u, \\u0444|f, \\u0445|h, \\u04b3|h, \\u04bb|h, \\u0446|ts, \\u04b5|ts, \\u0447|ch, \\u04f5|ch, \\u04b7|ch, \\u04cc|ch, \\u04b9|ch, \\u045f|dz, \\u0448|sh, \\u0449|sht, \\u044a|a, \\u044b|y, \\u04f9|y, \\u044c|y, \\u048d|y, \\u044d|e, \\u04ed|e, \\u044e|yu, \\u044f|ya","k2Sef":"0","k2SefLabelCat":"content","k2SefLabelTag":"tag","k2SefLabelUser":"author","k2SefLabelSearch":"search","k2SefLabelDate":"date","k2SefLabelItem":"0","k2SefLabelItemCustomPrefix":"","k2SefInsertItemId":"1","k2SefItemIdTitleAliasSep":"dash","k2SefUseItemTitleAlias":"1","k2SefInsertCatId":"1","k2SefCatIdTitleAliasSep":"dash","k2SefUseCatTitleAlias":"1","sh404SefLabelCat":"","sh404SefLabelUser":"blog","sh404SefLabelItem":"2","sh404SefTitleAlias":"alias","sh404SefModK2ContentFeedAlias":"feed","sh404SefInsertItemId":"0","sh404SefInsertUniqueItemId":"0","cbIntegration":"0"}', '', '{"compatibility":{"installed":{"value":["3.[012345]","2.5"],"version":"2.6.9"},"available":{"value":["3.[012345]","2.5"],"version":"2.6.9"}}}', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'plg_finder_k2', 'plugin', 'k2', 'finder', 0, 0, 1, 0, '{"legacy":false,"name":"plg_finder_k2","type":"plugin","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"PLG_FINDER_K2_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'Search - K2', 'plugin', 'k2', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"Search - K2","type":"plugin","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_THIS_PLUGIN_EXTENDS_THE_DEFAULT_JOOMLA_SEARCH_FUNCTIONALITY_TO_K2_CONTENT","group":""}', '{"search_limit":"50","search_tags":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'System - K2', 'plugin', 'k2', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - K2","type":"plugin","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_THE_K2_SYSTEM_PLUGIN_IS_USED_TO_ASSIST_THE_PROPER_FUNCTIONALITY_OF_THE_K2_COMPONENT_SITE_WIDE_MAKE_SURE_ITS_ALWAYS_PUBLISHED_WHEN_THE_K2_COMPONENT_IS_INSTALLED","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'User - K2', 'plugin', 'k2', 'user', 0, 1, 1, 0, '{"legacy":false,"name":"User - K2","type":"plugin","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_A_USER_SYNCHRONIZATION_PLUGIN_FOR_K2","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'Josetta - K2 Categories', 'plugin', 'k2category', 'josetta_ext', 0, 1, 1, 0, '{"legacy":false,"name":"Josetta - K2 Categories","type":"plugin","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'Josetta - K2 Items', 'plugin', 'k2item', 'josetta_ext', 0, 1, 1, 0, '{"legacy":false,"name":"Josetta - K2 Items","type":"plugin","creationDate":"June 7th, 2012","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'K2 Comments', 'module', 'mod_k2_comments', '', 0, 1, 0, 0, '{"legacy":false,"name":"K2 Comments","type":"module","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"MOD_K2_COMMENTS_DESCRIPTION","group":""}', '{"moduleclass_sfx":"","module_usage":"","":"K2_TOP_COMMENTERS","catfilter":"0","category_id":"","comments_limit":"5","comments_word_limit":"10","commenterName":"1","commentAvatar":"1","commentAvatarWidthSelect":"custom","commentAvatarWidth":"50","commentDate":"1","commentDateFormat":"absolute","commentLink":"1","itemTitle":"1","itemCategory":"1","feed":"1","commenters_limit":"5","commenterNameOrUsername":"1","commenterAvatar":"1","commenterAvatarWidthSelect":"custom","commenterAvatarWidth":"50","commenterLink":"1","commenterCommentsCounter":"1","commenterLatestComment":"1","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'K2 Content', 'module', 'mod_k2_content', '', 0, 1, 0, 0, '{"legacy":false,"name":"K2 Content","type":"module","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_MOD_K2_CONTENT_DESCRIPTION","group":""}', '{"moduleclass_sfx":"","getTemplate":"Default","source":"filter","":"K2_OTHER_OPTIONS","catfilter":"0","category_id":"","getChildren":"0","itemCount":"5","itemsOrdering":"","FeaturedItems":"1","popularityRange":"","videosOnly":"0","item":"","items":"","itemTitle":"1","itemAuthor":"1","itemAuthorAvatar":"1","itemAuthorAvatarWidthSelect":"custom","itemAuthorAvatarWidth":"50","userDescription":"1","itemIntroText":"1","itemIntroTextWordLimit":"","itemImage":"1","itemImgSize":"Small","itemVideo":"1","itemVideoCaption":"1","itemVideoCredits":"1","itemAttachments":"1","itemTags":"1","itemCategory":"1","itemDateCreated":"1","itemHits":"1","itemReadMore":"1","itemExtraFields":"0","itemCommentsCounter":"1","feed":"1","itemPreText":"","itemCustomLink":"0","itemCustomLinkTitle":"","itemCustomLinkURL":"http:\\/\\/","itemCustomLinkMenuItem":"","K2Plugins":"1","JPlugins":"1","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'K2 Tools', 'module', 'mod_k2_tools', '', 0, 1, 0, 0, '{"legacy":false,"name":"K2 Tools","type":"module","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_TOOLS","group":""}', '{"moduleclass_sfx":"","module_usage":"0","":"K2_CUSTOM_CODE_SETTINGS","archiveItemsCounter":"1","archiveCategory":"","authors_module_category":"","authorItemsCounter":"1","authorAvatar":"1","authorAvatarWidthSelect":"custom","authorAvatarWidth":"50","authorLatestItem":"1","calendarCategory":"","home":"","seperator":"","root_id":"","end_level":"","categoriesListOrdering":"","categoriesListItemsCounter":"1","root_id2":"","catfilter":"0","category_id":"","getChildren":"0","liveSearch":"","width":"20","text":"","button":"","imagebutton":"","button_text":"","min_size":"75","max_size":"300","cloud_limit":"30","cloud_category":"0","cloud_category_recursive":"0","customCode":"","parsePhp":"0","K2Plugins":"0","JPlugins":"0","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'K2 Users', 'module', 'mod_k2_users', '', 0, 1, 0, 0, '{"legacy":false,"name":"K2 Users","type":"module","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_MOD_K2_USERS_DESCRTIPTION","group":""}', '{"moduleclass_sfx":"","getTemplate":"Default","source":"0","":"K2_DISPLAY_OPTIONS","filter":"1","K2UserGroup":"","ordering":"1","limit":"4","userIDs":"","userName":"1","userAvatar":"1","userAvatarWidthSelect":"custom","userAvatarWidth":"50","userDescription":"1","userDescriptionWordLimit":"","userURL":"1","userEmail":"0","userFeed":"1","userItemCount":"1","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'K2 User', 'module', 'mod_k2_user', '', 0, 1, 0, 0, '{"legacy":false,"name":"K2 User","type":"module","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_MOD_K2_USER_DESCRIPTION","group":""}', '{"moduleclass_sfx":"","pretext":"","":"K2_LOGIN_LOGOUT_REDIRECTION","name":"1","userAvatar":"1","userAvatarWidthSelect":"custom","userAvatarWidth":"50","menu":"","login":"","logout":"","usesecure":"0","cache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 'K2 Quick Icons (admin)', 'module', 'mod_k2_quickicons', '', 1, 1, 2, 0, '{"legacy":false,"name":"K2 Quick Icons (admin)","type":"module","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_QUICKICONS_FOR_USE_IN_THE_JOOMLA_CONTROL_PANEL_DASHBOARD_PAGE","group":""}', '{"modCSSStyling":"1","modLogo":"1","cache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 'K2 Stats (admin)', 'module', 'mod_k2_stats', '', 1, 1, 2, 0, '{"legacy":false,"name":"K2 Stats (admin)","type":"module","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_STATS_FOR_USE_IN_THE_K2_DASHBOARD_PAGE","group":""}', '{"latestItems":"1","popularItems":"1","mostCommentedItems":"1","latestComments":"1","statistics":"1","cache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 'bt_bistro', 'template', 'bt_bistro', '', 0, 1, 1, 0, '{"legacy":false,"name":"bt_bistro","type":"template","creationDate":"02 Feb 2015","author":"Bowthemes.com","copyright":"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.","authorEmail":"templates@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com","version":"1.0","description":"\\n\\t\\tBT Bistro template - Design by Bowthemes.com\\n\\t","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 'T3 Framework', 'plugin', 't3', 'system', 0, 1, 1, 0, '{"name":"T3 Framework","type":"plugin","creationDate":"Mar 05, 2015","author":"JoomlArt.com","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"info@joomlart.com","authorUrl":"http:\\/\\/www.t3-framework.org","version":"2.4.5","description":"\\n\\t\\n\\t<div align=\\"center\\">\\n\\t\\t<div class=\\"alert alert-success\\" style=\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\">\\n\\t\\t\\t\\t<a href=\\"http:\\/\\/t3-framework.org\\/\\"><img src=\\"http:\\/\\/joomlart.s3.amazonaws.com\\/images\\/jat3v3-documents\\/message-installation\\/logo.png\\" alt=\\"some_text\\" width=\\"300\\" height=\\"99\\"><\\/a>\\n\\t\\t\\t\\t<h4><a href=\\"http:\\/\\/t3-framework.org\\/\\" title=\\"\\">Home<\\/a> | <a href=\\"http:\\/\\/demo.t3-framework.org\\/\\" title=\\"\\">Demo<\\/a> | <a href=\\"http:\\/\\/t3-framework.org\\/documentation\\" title=\\"\\">Document<\\/a> | <a href=\\"https:\\/\\/github.com\\/t3framework\\/t3\\/blob\\/master\\/CHANGELOG.md\\" title=\\"\\">Changelog<\\/a><\\/h4>\\n\\t\\t<p> <\\/p>\\n\\t\\t<p>Copyright 2004 - 2014 <a href=''http:\\/\\/www.joomlart.com\\/'' title=''Visit Joomlart.com!''>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t<\\/div>\\n     <style>table.adminform{width: 100%;}<\\/style>\\n\\t <\\/div>\\n\\t\\t\\n\\t","group":"","filename":"t3"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 'BT Content Showcase', 'module', 'mod_bt_contentshowcase', '', 0, 1, 0, 0, '{"legacy":false,"name":"BT Content Showcase","type":"module","creationDate":"June 2012","author":"www.bowthemes.com","copyright":"Copyright (C) 2012 Bowthemes. All rights reserved.","authorEmail":"support@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com","version":"2.4.5","description":"\\n\\t\\n<div class=\\"bt_description\\">\\n\\t<h3>BT Content Showcase Module Version 2.4.5<\\/h3>\\n\\t<a href=\\"http:\\/\\/bowthemes.com\\" target=\\"_blank\\"><img\\n\\t\\tsrc=\\"..\\/modules\\/mod_bt_contentshowcase\\/admin\\/images\\/bt-slider.png\\">\\n\\t<\\/a>\\n\\t<p>Helps to slide your articles from Joomla! categories with cool\\n\\t\\teffects, rich backend configs covering layout, animation control, auto\\n\\t\\tthumbnail creating, images resizing, numbering articles, sorting\\n\\t\\tect...<\\/p>\\n\\t<br clear=\\"both\\" \\/>\\n\\t<h3>Features<\\/h3>\\n\\t<ul class=\\"list-style\\">\\n\\t\\t<li>Compatibility with Joomla  1.6, 1.7, 2.5 and Joomla 3.x<\\/li>\\n\\t\\t<li>Content control display from any section, category or article ID''s<\\/li>\\n\\t\\t<li>Support for<a href=\\"http:\\/\\/getk2.org\\/\\"> K2 component<\\/a><\\/li>\\n\\t\\t<li>Support for <a href=\\"joomla-extensions\\/bt-porfolio-component.html\\" target=\\"_blank\\" title=\\"Portfolio Joomla component\\">BT Portfolio component<\\/a><\\/li>\\n\\t\\t<li>Support for <a href=\\"http:\\/\\/bit.ly\\/1baVxzb\\">EasyBlog Component<\\/a><\\/li>\\n\\t\\t<li>Scalable size of the module<\\/li>\\n\\t\\t<li>Horizontal and vertical news presentation (columns and rows configuration).<\\/li>\\n                <li>Scrolling and fading slide.<\\/li>\\n                <li>Powerful with two layouts Slide and Slide - Accordion<\\/li>\\n                <li>Control slide with next, back and navigation button<\\/li>\\n\\t\\t<li>Show text, image, author, date, section\\/category name and button \\"read more\\" option, with order customization.<\\/li>\\n\\t\\t<li>Image Cropping & Caching<\\/li>\\n\\t\\t<li>On\\/Off front page articles display in modules<\\/li>\\n\\t\\t<li>Easy and friendly back-end administration.<\\/li>\\n\\t\\t<li>Used Javascript Framework: Jquery latest version<\\/li>\\n\\t\\t<li>Fully compatible: Firefox, IE7+, Opera 9.5, Safari, Netscape, Google Chrome, Camino, Flock 0.7+.<\\/li>\\n        <li>Support Responsive Website<\\/li>\\n\\t<\\/ul>\\n\\t<h3>UPgrade versions<\\/h3>\\n\\t<p>\\n\\t\\tYour current versions is 2.4.5. <a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/bt-content-showcase.html\\">Find our latest versions now<\\/a>\\n\\t<\\/p>\\n\\t<h3>Userful links<\\/h3>\\n\\t<ul>\\n\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/bowthemes.com\\/bt-content-showcase.html\\">Video tutorials<\\/a><\\/li>\\n\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/forums\\/28-bt-content-showcase\\/\\">Report bug<\\/a><\\/li>\\n\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/forums\\/28-bt-content-showcase\\/\\">Forum support<\\/a><\\/li>\\n\\t<\\/ul>\\n\\t<h3>About bow themes & copyright<\\/h3>\\n\\t<p>Bow Themes is Professional Joomla template provider. We are\\n\\t\\tfocused on creating unique, attractive and clean templates without\\n\\t\\tloosing flexibility and simplicity of customization<\\/p>\\n\\tCopyright (C) 2012 BowThemes\\n<\\/div>\\n\\t<style>\\n.bt_description{\\n\\ttext-align: left;\\n}\\n.bt_description h3 {\\n\\ttext-transform: uppercase;\\n\\tmargin: 20px 0px 10px 0px;\\n}\\n\\n.bt_description img {\\n\\tfloat: left;\\n\\tmargin: 5px 10px 5px 0px;\\n}\\n\\n.bt_description p,.bt_description li {\\n\\tpadding: 5px 5px 5px 30px;\\n\\tlist-style: none outside none;\\n}\\n\\n.bt_description ul.list-style li {\\n\\tbackground: url(..\\/modules\\/mod_bt_contentshowcase\\/admin\\/images\\/tick.png)\\n\\t\\t0px 6px no-repeat;\\n\\tpadding-left: 30px;\\n\\tline-height: 15px;\\n}\\n<\\/style>\\n\\n    ","group":""}', '{"moduleclass_sfx":"","content_title":"","content_title_link":"","layout":"default","GRID_SETTING":"GRID_SETTING","module_width":"640","item_height":"300","items_per_cols":"1","items_per_rows":"3","items_per_page":"5","show_arrow":"1","arrow_position":"right","activate_first":"1","item_min_width":"300","item_margin":"10","back_side_bg":"#bb1d48","bs_text_color":"#ffffff","NAVIGATION_SETTING":"NAVIGATION_SETTING","next_prev":"1","next_back_position":"flanks","navigation_type":"bullet","navigation_position":"top","source":"category","article_ids":"","k2_article_ids":"","btportfolio_article_ids":"","k2_category":"","btportfolio_category":"","easyblog_article_ids":"","auto_category":"0","sub_categories":"0","limit_items":"12","limit_items_for_each":"0","user_id":"0","show_featured":"1","ordering":"created-asc","content_plugin":"0","use_introimg":"1","use_caption":"0","use_linka":"0","title_option":"TITLE_OPTION","show_title":"1","limit_title_by":"word","title_max_chars":"8","intro_text_option":"INTRO_TEXT_OPTION","show_intro":"1","limit_description_by":"char","description_max_chars":"100","show_category_name":"1","show_category_name_as_link":"1","show_readmore":"1","show_date":"0","show_author":"0","image_option":"IMAGE_OPTION","show_image":"1","checkimg_fulltext":"0","check_image_exist":"0","image_align":"center","image_thumb":"1","thumbnail_width":"180","thumbnail_height":"120","thumbnail_small_width":"135","default_thumb":"1","touchscreen":"0","bn_effect":"slide","hovereffect":"1","modalbox":"0","slide_effect":"scroll","mouse_event":"hover","metro_effect":"slide","slide_direction":"horizontal","fpshow_effect":"slide","scroll_amount":"5","scroll_direction":"1","slide_item_per_time":"1","pause_hover":"1","duration":"600","captionSpeed":"500","auto_start":"1","interval":"5","easing":"easeInQuad","auto_strip_tags":"1","allow_tags":"","open_target":"_parent","loadJquery":"auto","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `#__extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(10017, 'BT Background SlideShow', 'module', 'mod_bt_backgroundslideshow', '', 0, 1, 0, 0, '{"legacy":false,"name":"BT Background SlideShow","type":"module","creationDate":"Apr 2012","author":"BowThemes","copyright":"Copyright \\u00a9 2012 Bow Themes","authorEmail":"bowthemes.com","authorUrl":"http:\\/\\/bowthemes.com","version":"2.4.10","description":"\\n        \\n\\t\\t<div class=\\"bt_description\\">\\n\\t\\t\\t<h3>Module BT Background SlideShow Version 2.4.10<\\/h3>\\n\\t\\t\\t<a href=\\"http:\\/\\/bowthemes.com\\" target=\\"_blank\\"><img src=\\"..\\/modules\\/mod_bt_backgroundslideshow\\/admin\\/images\\/btslideshow.png\\"><\\/a>\\n\\t\\t\\t<p align=\\"justify\\">\\n                  BT Background SlideShow is a perfect slideshow module for Joomla.\\n                  It allows you to easily display images with many flash type animations done in Javascript.\\n                  You can upload, import images, preview, order images from parameter module and fully configure with a lot of options.\\n                  BT Background SlideShow is compatible with Joomla 1.7, 2.5 and Joomla 3.x\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<br clear=\\"both\\" \\/>\\n\\t\\t\\t<h3>Extension features:<\\/h3>\\n\\t\\t\\t<ul class=\\"list-style\\">\\n                            <li>Import images from different sources to gallery (Flickr album, Picasa Album, Joomla Folder, Phoca Gallery Component, JoomGallery component)<\\/li>\\n                            <li>Ability to upload, preview and order by drag and drop images from parameter<\\/li>\\n                            <li>Link image to  article or K2 component''s item\\n                            <li>Auto crop images and thumbnails<\\/li>\\n                            <li>Unlimited Image Slideshow<\\/li>\\n                            <li>Smooth fullscreen background slideshow<\\/li>\\n                            <li>Youtube video background<\\/li>\\n                            <li>Easiness to insert images links, captions and descriptions<\\/li>\\n                            <li>Be compatible with Joomla 1.7, 2.5 and Joomla 3.x<\\/li>\\n                            <li>Cross Browser Support: IE7+, Firefox 2+, Safari 3+, Chrome 8+, Opera 9+<\\/li>\\n                            <li>Video tutorial and forum support provided\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<h3>Upgrade versions<\\/h3>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tYour current versions is BT Background SlideShow 2.4.10. <a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/showcase\\/joomla-extensions.html\\">Find our latest versions now<\\/a>\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<h3>About bow themes & copyright<\\/h3>\\t\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tBow Themes is Professional Joomla template provider. We are focused on creating unique, attractive and clean templates without loosing flexibility and simplicity of customization\\n\\t\\t\\t<\\/p>\\n\\t\\t\\tCopyright (C) 2012 BowThemes\\t\\n\\t\\t<\\/div>\\n\\t\\t<style>\\n\\t\\t\\t.bt_description{\\n\\t\\t\\t\\ttext-align: left;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description h3{\\n\\t\\t\\t\\ttext-transform: uppercase;\\n\\t\\t\\t\\tmargin: 20px 0px 10px 0px;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description img{\\n\\t\\t\\t\\tfloat:left;\\n\\t\\t\\t\\tmargin:5px 10px 5px 0px;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description p,.bt_description li{\\n\\t\\t\\t\\tpadding: 5px 5px 5px 30px;\\n\\t\\t\\t\\tlist-style: none outside none;\\n\\t\\t\\t}\\n\\n\\t\\t\\t.bt_description ul.list-style li{\\n\\t\\t\\t\\tbackground:url(..\\/modules\\/mod_bt_backgroundslideshow\\/admin\\/images\\/tick.png) 0px 6px no-repeat;\\n\\t\\t\\t\\tpadding-left:30px;\\n\\t\\t\\t\\tline-height:15px;\\n\\t\\t\\t}\\n\\t\\t<\\/style>\\n\\t\\n\\t","group":""}', '{"source":"upload","remote_image":"0","get_limit":"20","gallery":"","slideshowSize":"window","slideshowWidth":"","slideshowHeight":"","resizeImage":"auto","hAlign":"c","vAlign":"m","slideshowSpeed":"8000","effecttype":"fade","slidedirection":"left","effectTime":"2000","caption":"0","bgo-pattern":"","bgo-opacity":"0.5","nav-type":"nav-btn","nex-back-button":"1","playpause-button":"1","thumb_number":"3","thumb_width":"80","thumb_height":"50","nav-align":"center","nav-position":"fixed","progress-bar":"1","autoplay":"1","stopAuto":"1","rememberlast":"1","shvideo":"1","controltype":"0","keepcontrolvideo":"2","videoquanlity":"highres","videoautoplay":"1","videovolume":"100","wrapper_element":"body","title_font":"","title_color":"#ffffff","title_size":"18","desc_font":"","desc_color":"#ffffff","desc_size":"12","nav_bg":"#222222","progress_bg":"#A2080C","crop_image":"0","jpeg_compression":"100","crop_width":"1600","crop_height":"1000","load_jquery":"1","hide_content":"0","hide_content_text":"Show Content|Hide Content","pauseOnHover":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 'System - BT Shortcode ', 'plugin', 'bt_shortcode_system', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - BT Shortcode ","type":"plugin","creationDate":"November 2014","author":"BowThemes.com","copyright":"Copyright (C) 2014 BowThemes. All rights reserved.","authorEmail":"support@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com\\/","version":"1.0.2","description":"BT Shortcode system plugin","group":""}', '{"prefix":"bt_","primary_color":"","secondary_color":"","tertiary_color":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 'Content - BT Shortcode', 'plugin', 'bt_shortcode_content', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"Content - BT Shortcode","type":"plugin","creationDate":"November 2014","author":"BowThemes.com","copyright":"Copyright (C) 2014 BowThemes. All rights reserved.","authorEmail":"support@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com\\/","version":"1.0.1","description":"BT Shortcode content plugin","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 'Editors-xtd - BT Shortcode', 'plugin', 'bt_shortcode', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"Editors-xtd - BT Shortcode","type":"plugin","creationDate":"November 2014","author":"BowThemes.com","copyright":"Copyright (C) 2014 BowThemes. All rights reserved.","authorEmail":"support@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com\\/","version":"1.0.0","description":"BT Shortcode button plugin","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 'plg_bt_shortcode', 'package', 'pkg_plg_bt_shortcode', '', 0, 1, 1, 0, '{"legacy":false,"name":"BT Shortcode Plugin","type":"package","creationDate":"November 2014","author":"Bow Themes","copyright":"","authorEmail":"","authorUrl":"","version":"1.0.3","description":"BT Shortcode Plugin Package","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 'BT Advanced Parallax Background', 'module', 'mod_bt_apb', '', 0, 1, 0, 0, '{"legacy":false,"name":"BT Advanced Parallax Background","type":"module","creationDate":"November 2014","author":"BowThemes","copyright":"Copyright \\u00a9 2014 Bow Themes","authorEmail":"support@bowthemes.com","authorUrl":"http:\\/\\/bowthemes.com","version":"1.0.1","description":"\\n        \\n\\t\\t<div class=\\"bt_description\\">\\n\\t\\t\\t<h3>Module BT Advanced Parallax Background version 1.0.1<\\/h3>\\n\\t\\t\\t<a href=\\"http:\\/\\/bowthemes.com\\" target=\\"_blank\\"><img src=\\"..\\/modules\\/mod_bt_apb\\/admin\\/images\\/icon.png\\" alt=\\"BT Parallax Vision\\"><\\/a>\\n\\t\\t\\t<p align=\\"justify\\">\\n                BT Advanced Parallax Background is combined module. It helps you display a module with dynamic video or image background and play image gallery with only one click.\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<br clear=\\"both\\" \\/>\\n\\t\\t\\t<h3>Extension features:<\\/h3>\\n\\t\\t\\t<ul class=\\"list-style\\">\\n\\t\\t\\t\\t<li>Support parallax video\\/image background<\\/li>\\n\\t\\t\\t\\t<li>Play images gallery, embed video, HTML 5 video in fullscreen<\\/li>\\n\\t\\t\\t\\t<li>Support get images from Flickr, Picasa, Joomla folder, Phoca and JoomGallery components<\\/li>\\n\\t\\t\\t\\t<li>Support Drag and Drop images to upload<\\/li>\\n\\t\\t\\t\\t<li>Custom module''s content and show\\/hide content effect<\\/li>\\n\\t\\t\\t\\t<li>Compatible with Joomla 2.5+ and Joomla 3.x+<\\/li>\\n\\t\\t\\t\\t<li>Support browsers: IE9+, Firefox, Chrome ...<\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<h3>Upgrade versions<\\/h3>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tYour current versions is BT Advanced Parallax Background 1.0.1. <a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/showcase\\/joomla-extensions.html\\">Find our latest versions now<\\/a>\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<h3>About Bow Themes & copyright<\\/h3>\\t\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tBow Themes is Professional Joomla template provider. We are focused on creating unique, attractive and clean templates without loosing flexibility and simplicity of customization\\n\\t\\t\\t<\\/p>\\n\\t\\t\\tCopyright (C) 2012 BowThemes\\t\\n\\t\\t<\\/div>\\n\\t\\t<style>\\n\\t\\t\\t.bt_description{\\n\\t\\t\\t\\ttext-align: left;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description h3{\\n\\t\\t\\t\\ttext-transform: uppercase;\\n\\t\\t\\t\\tmargin: 20px 0px 10px 0px;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description img{\\n\\t\\t\\t\\tfloat:left;\\n\\t\\t\\t\\tmargin:5px 10px 5px 0px;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description p,.bt_description li{\\n\\t\\t\\t\\tpadding: 5px 5px 5px 30px;\\n\\t\\t\\t\\tlist-style: none outside none;\\n\\t\\t\\t}\\n\\n\\t\\t\\t.bt_description ul.list-style li{\\n\\t\\t\\t\\tbackground:url(..\\/modules\\/mod_bt_apb\\/admin\\/images\\/tick.png) 0px 6px no-repeat;\\n\\t\\t\\t\\tpadding-left:30px;\\n\\t\\t\\t\\tline-height:15px;\\n\\t\\t\\t}\\n\\t\\t<\\/style>\\n\\t\\n\\t","group":""}', '{"module_width":"","module_height":"300","background_type":"image","parallax_type":"dynamic","textured_opacity":"0.7","speed_factor":"0.5","heading_text":"BT Advanced Parallax Background","sub_text":"","button_text":"Open Gallery","content_effect":"fade","gallery_type":"image","source":"upload","video_source":"youtube","remote_image":"0","get_limit":"20","gallery":"","thumbnail_width":"200","thumbnail_height":"200","number_rows":"2","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 'AcyMailing', 'component', 'com_acymailing', '', 1, 1, 0, 0, '{"name":"AcyMailing","type":"component","creationDate":"mars 2015","author":"Acyba","copyright":"Copyright (C) 2009-2015 ACYBA SARL - All rights reserved.","authorEmail":"dev@acyba.com","authorUrl":"http:\\/\\/www.acyba.com","version":"4.9.2","description":"Manage your Mailing lists, Newsletters, e-mail marketing campaigns","group":"","filename":"acymailing_j3"}', '{}', '', '{"compatibility":{"available":{"value":["1.7","2.5","3.[012345]"],"version":"4.9.1"}}}', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 'AcyMailing : trigger Joomla Content plugins', 'plugin', 'contentplugin', 'acymailing', 0, 0, 1, 0, '{"version":"3.7.0","author":"Acyba","creationDate":"November 2009"}', '', '', '', 0, '0000-00-00 00:00:00', 15, 0),
(10025, 'AcyMailing Manage text', 'plugin', 'managetext', 'acymailing', 0, 1, 1, 0, '{"version":"1.0.0","author":"Acyba","creationDate":"October 2010"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(10026, 'AcyMailing Tag : Website links', 'plugin', 'online', 'acymailing', 0, 1, 1, 0, '{"version":"3.7.0","author":"Acyba","creationDate":"September 2009"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(10027, 'AcyMailing : share on social networks', 'plugin', 'share', 'acymailing', 0, 1, 1, 0, '{"version":"1.0.0","author":"Acyba","creationDate":"August 2010"}', '', '', '', 0, '0000-00-00 00:00:00', 20, 0),
(10028, 'AcyMailing : Statistics Plugin', 'plugin', 'stats', 'acymailing', 0, 1, 1, 0, '{"version":"3.7.0","author":"Acyba","creationDate":"September 2009"}', '', '', '', 0, '0000-00-00 00:00:00', 50, 0),
(10029, 'AcyMailing table of contents generator', 'plugin', 'tablecontents', 'acymailing', 0, 1, 1, 0, '{"version":"1.0.0","author":"Acyba","creationDate":"January 2011"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10030, 'AcyMailing Tag : CB User information', 'plugin', 'tagcbuser', 'acymailing', 0, 0, 1, 0, '{"version":"3.7.1","author":"Acyba","creationDate":"September 2009"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(10031, 'AcyMailing Tag : content insertion', 'plugin', 'tagcontent', 'acymailing', 0, 1, 1, 0, '{"version":"3.7.0","author":"Acyba","creationDate":"September 2009"}', '', '', '', 0, '0000-00-00 00:00:00', 11, 0),
(10032, 'AcyMailing Tag : Subscriber information', 'plugin', 'tagsubscriber', 'acymailing', 0, 1, 1, 0, '{"version":"4.9.0","author":"Acyba","creationDate":"mars 2015"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(10033, 'AcyMailing Tag : Manage the Subscription', 'plugin', 'tagsubscription', 'acymailing', 0, 1, 1, 0, '{"version":"4.9.0","author":"Acyba","creationDate":"mars 2015"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10034, 'AcyMailing Tag : Date / Time', 'plugin', 'tagtime', 'acymailing', 0, 1, 1, 0, '{"version":"4.9.0","author":"Acyba","creationDate":"mars 2015"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10035, 'AcyMailing Tag : Joomla User Information', 'plugin', 'taguser', 'acymailing', 0, 1, 1, 0, '{"version":"4.9.0","author":"Acyba","creationDate":"mars 2015"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(10036, 'AcyMailing Template Class Replacer', 'plugin', 'template', 'acymailing', 0, 1, 1, 0, '{"version":"4.9.0","author":"Acyba","creationDate":"mars 2015"}', '', '', '', 0, '0000-00-00 00:00:00', 25, 0),
(10037, 'AcyMailing Editor', 'plugin', 'acyeditor', 'editors', 0, 1, 1, 0, '{"version":"4.9.0","author":"Acyba","creationDate":"mars 2015"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10038, 'AcyMailing : (auto)Subscribe during Joomla registration', 'plugin', 'regacymailing', 'system', 0, 1, 1, 0, '{"version":"4.9.0","author":"Acyba","creationDate":"mars 2015"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10039, 'AcyMailing Module', 'module', 'mod_acymailing', '', 0, 1, 1, 0, '{"version":"3.7.0","author":"Acyba","creationDate":"September 2009"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10040, 'BT Google Maps', 'module', 'mod_bt_googlemaps', '', 0, 1, 0, 0, '{"legacy":false,"name":"BT Google Maps","type":"module","creationDate":"Jun 2012","author":"BowThemes","copyright":"Copyright (C) 2012 Bowthemes. All rights reserved.","authorEmail":"support@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com","version":"2.0.9","description":"\\n\\t\\n\\t\\t<div class=\\"bt_description\\">\\n\\t\\t\\t<h3>BT Google Maps Module Version 2.0.8<\\/h3>\\t\\t\\t\\n\\t\\t\\t<a href=\\"http:\\/\\/bowthemes.com\\" target=\\"_blank\\"><img src=\\"..\\/modules\\/mod_bt_googlemaps\\/admin\\/images\\/mod_bt_googlemaps.png\\"><\\/a>\\n\\t\\t\\t<p>Bring google maps to your website by the simplest & easiest way. Using Google Maps version 3 services, BT Google Maps support you input both Address and Coordinate, create your custom marker with title, images, description...\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<br clear=\\"both\\" \\/>\\n\\t\\t\\t<h3>Features<\\/h3>\\n\\t\\t\\t<ul class=\\"list-style\\">\\n\\t\\t\\t\\t<li>Google Maps Version 3 (Latest)<\\/li>\\n\\t\\t\\t\\t<li>Support both input types: Address and Coordinate <\\/li>\\n\\t\\t\\t\\t<li>Retrieving lat\\/long of location using Geocoder<\\/li>\\n\\t\\t\\t\\t<li>Auto-Detect Language<\\/li>\\n\\t\\t\\t\\t<li>Streetview, MapOverview, ZoomControl, PanControl, ScaleControl, MapTypeControl<\\/li>\\n\\t\\t\\t\\t<li>Support Multiple Marker( Easy customize title, icon, shadow, description popup)<\\/li>\\n\\t\\t\\t\\t<li>Weather & cloud layers<\\/li>\\n\\t\\t\\t\\t<li>Support custom map style<\\/li>\\n\\t\\t\\t\\t<li>Support custom inforwindow style<\\/li>\\n\\t\\t\\t\\t<li>Multiple module instances<\\/li>\\t\\n\\t\\t\\t\\t<li>The configuration is very easy and simple<\\/li>\\t\\t\\t\\t\\n\\t\\t\\t\\t<li>Compatibility with Joomla 1.6, 1.7, 2.5 & Joomla 3.x<\\/li>\\n\\t\\t\\t\\t<li>Cross Browser Support: IE7+, Firefox 2+, Safari 3+, Chrome 8+, Opera 9+<\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<h3>Upgrade versions<\\/h3>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tYour current versions is 2.0.8. <a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/bt-google-map.html\\">Find our latest versions now<\\/a>\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<h3>Userful links<\\/h3>\\n\\t\\t\\t<ul>\\n\\t\\t\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/bt-google-map.html\\">Video tutorials<\\/a><\\/li>\\n\\t\\t\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/forums\\/27-bt-google-map-module\\/\\">Report bug<\\/a><\\/li>\\n\\t\\t\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/forums\\/27-bt-google-map-module\\/\\">Forum support<\\/a><\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<h3>About bow themes & copyright<\\/h3>\\t\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tBow Themes is Professional Joomla template provider. We are focused on creating unique, attractive and clean templates without loosing flexibility and simplicity of customization\\n\\t\\t\\t<\\/p>\\n\\t\\t\\tCopyright (C) 2012 BowThemes\\t\\n\\n\\t\\t<\\/div>\\n\\t\\t<style>\\n\\t\\t\\t.bt_description{\\n\\t\\t\\t\\ttext-align: left;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description h3{\\n\\t\\t\\t\\ttext-transform: uppercase;\\n\\t\\t\\t\\tmargin: 20px 0px 10px 0px;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description img{\\n\\t\\t\\t\\tfloat:left;\\n\\t\\t\\t\\tmargin:5px 5px 5px 0px;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description p,.bt_description li{\\n\\t\\t\\t\\tlist-style: none outside none;\\n\\t\\t\\t\\tpadding: 5px 5px 5px 20px;\\t\\t\\t\\t\\n\\t\\t\\t}\\n\\t\\t\\t\\n\\t\\t\\t.bt_description ul.list-style li{\\n\\t\\t\\t\\tbackground:url(..\\/modules\\/mod_bt_googlemaps\\/admin\\/images\\/tick.png) 0px 6px no-repeat;\\n\\t\\t\\t\\tpadding-left:30px;\\n\\t\\t\\t\\tline-height:15px;\\n\\t\\t\\t}\\n\\t\\t<\\/style>\\n\\t\\t\\n\\t","group":""}', '{"mapType":"roadmap","mapCenterType":"address","mapCenterAddress":"New York, United States","mapCenterCoordinate":"40.7143528, -74.0059731","width":"auto","height":"350","zoom":"13","zoomControl":"true","panControl":"true","mapTypeControl":"true","scaleControl":"true","overviewMapControl":"true","streetViewControl":"true","draggable":"true","disableDoubleClickZoom":"false","scrollwheel":"true","weather":"0","temperatureUnit":"f","cloud":"1","enable-style":"0","style-title":"BT Map","createNewOrApplyDefaultStyle":"createNew","enable-custom-infobox":"0","boxcss":"background :#ffffff,\\r\\nopacity : 0.85,\\r\\nwidth : 280px,\\r\\nheight :100px,\\r\\nborder : 1px solid grey,\\r\\nborderRadius:3px,\\r\\npadding : 10px,\\r\\nboxShadow:30px 10px 10px 1px grey","pixelOffset":"-150,-155","closeBoxMargin":"-9px","closeBoxURL":"","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10041, 'BT Quick Contact', 'module', 'mod_btquickcontact', '', 0, 1, 0, 0, '{"legacy":false,"name":"BT Quick Contact","type":"module","creationDate":"July 2012","author":"Bowthemes","copyright":"Copyright (C) 2012 Bowthemes. All rights reserved.","authorEmail":"support@bowthemes.com","authorUrl":"www.bowthemes.com","version":"2.1.4","description":"\\n\\t\\t\\t\\n\\t\\t<div class=\\"bt_description\\">\\n\\t\\t\\t<h3>Module BT Quick Contact Version 2.1.4<\\/h3>\\n\\t\\t\\t<a href=\\"http:\\/\\/bowthemes.com\\/bt-quick-contact.html\\" target=\\"_blank\\"><img src=\\"..\\/modules\\/mod_btquickcontact\\/admin\\/images\\/quick-contact-icon.png\\"><\\/a>\\n\\t\\t\\t<p align=\\"justify\\">\\n                            BT Quick Contact is custom contact form allow you creating and displaying form as light box or module position. It allow you create unlimited custom fields with all types and support multi-step forms...\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<br clear=\\"both\\" \\/>\\n\\t\\t\\t<h3>Extension features:<\\/h3>\\n\\t\\t\\t<ul class=\\"list-style\\">\\n                            <li>Support 2 types : Popup and Module position<\\/li>\\n                            <li>Standard fields: name, email, phone, message, agree to rules<\\/li>\\n                            <li>Setting almost all fields as required or not<\\/li>\\n                            <li>Setting almost all fields as required or not<\\/li>\\n                            <li>Unlimited fields and Unlimited forms on page<\\/li>\\n                            <li>Support Multi-step forms with progress bar<\\/li>\\n                            <li>Name and email auto fill when logged in<\\/li>\\n                            <li>Sending copy of email to sender<\\/li>\\n                            <li>Custom email subject<\\/li>\\n                            <li>Custom success message<\\/li>\\n                            <li>Page redirect to URL or menu item after sending email<\\/li>\\n                            <li>Joomla native JavaScript validation with AJAX submit<\\/li>\\n                            <li>Captcha anti-spam function support<\\/li>\\n                            <li>Easy and friendly back-end administration<\\/li>\\n                            <li>Compatible with Joomla 2.5 and Joomla 3.x\\n                            <li>Fully compatible: Firefox, IE7+, Opera 9.5, Safari, Netscape, Google Chrome, Camino, Flock 0.7+.<\\/li>\\n                            <li>Video tutorials and forum support provided<\\/li>\\n\\t\\t\\t<\\/ul>\\n                        <h3>Tip for using<\\/h3>\\n                        <ul class=\\"list-style\\">\\n                            <li>In Popup type, you can put this anchor <br\\/>&lt;a href=&quot;#&quot; class=&quot;bt-quick-contact&quot; rel=&quot;module_id&quot;&gtSome text&lt\\/a&gt <br\\/> to open contact form.<\\/li>\\n                            <li>Or use ID of any HTML elements on your site to do that with \\"HTML Element Id\\" param<\\/li>\\n                        <\\/ul>\\n\\t\\t\\t<h3>Upgrade versions<\\/h3>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tYour current versions is BT Quick Contact 2.1.4 <a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/bt-quick-contact.html\\">Find our latest versions now<\\/a>\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t\\n\\t\\t\\t<h3>About bow themes & copyright<\\/h3>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tBow Themes is Professional Joomla template provider. We are focused on creating unique, attractive and clean templates without loosing flexibility and simplicity of customization\\n\\t\\t\\t<\\/p>\\n\\t\\t\\tCopyright \\u00a9 2012 http:\\/\\/bowthemes.com\\n\\t\\t<\\/div>\\n\\t\\t<style>\\n\\t\\t\\t.bt_description{\\n\\t\\t\\t\\ttext-align: left;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description h3{\\n\\t\\t\\t\\ttext-transform: uppercase;\\n\\t\\t\\t\\tmargin: 20px 0px 10px 0px;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description img{\\n\\t\\t\\t\\tfloat:left;\\n\\t\\t\\t\\tmargin:5px 10px 5px 0px;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description p,.bt_description li{\\n\\t\\t\\t\\tpadding: 5px 5px 5px 30px;\\n\\t\\t\\t\\tlist-style: none outside none;\\n\\t\\t\\t}\\n\\n\\t\\t\\t.bt_description ul.list-style li{\\n\\t\\t\\t\\tbackground:url(..\\/modules\\/mod_btquickcontact\\/admin\\/images\\/tick.png) 0px 6px no-repeat;\\n\\t\\t\\t\\tpadding-left:30px;\\n\\t\\t\\t\\tline-height:15px;\\n\\t\\t\\t}\\n\\t\\t<\\/style>\\n\\t\\n    ","group":""}', '{"admin_email":"","sender":"config","subject":"","captcha":"","form_type":"module","show_feedback":"1","width":"auto","height":"auto","layout":"default","send_copy":"0","thank_message":"Thanks for your message","redirect_url":"","html_element_id":"","progress_bar":"1","pre_text":"","post_text":"","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10042, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10043, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10044, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_filters`
--

CREATE TABLE IF NOT EXISTS `#__finder_filters` (
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
-- Table structure for table `#__finder_links`
--

CREATE TABLE IF NOT EXISTS `#__finder_links` (
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
-- Table structure for table `#__finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `#__finder_taxonomy` (
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
-- Dumping data for table `#__finder_taxonomy`
--

INSERT INTO `#__finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `#__finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_terms`
--

CREATE TABLE IF NOT EXISTS `#__finder_terms` (
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
-- Table structure for table `#__finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `#__finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__finder_terms_common`
--

INSERT INTO `#__finder_terms_common` (`term`, `language`) VALUES
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
-- Table structure for table `#__finder_tokens`
--

CREATE TABLE IF NOT EXISTS `#__finder_tokens` (
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
-- Table structure for table `#__finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `#__finder_tokens_aggregate` (
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
-- Table structure for table `#__finder_types`
--

CREATE TABLE IF NOT EXISTS `#__finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `#__finder_types`
--

INSERT INTO `#__finder_types` (`id`, `title`, `mime`) VALUES
(1, 'Category', ''),
(2, 'Contact', ''),
(3, 'Article', ''),
(4, 'News Feed', ''),
(5, 'Web Link', ''),
(6, 'Tag', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_attachments`
--

CREATE TABLE IF NOT EXISTS `#__k2_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemID` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `titleAttribute` text NOT NULL,
  `hits` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `itemID` (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_categories`
--

CREATE TABLE IF NOT EXISTS `#__k2_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `extraFieldsGroup` int(11) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `trash` smallint(6) NOT NULL DEFAULT '0',
  `plugins` text NOT NULL,
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`published`,`access`,`trash`),
  KEY `parent` (`parent`),
  KEY `ordering` (`ordering`),
  KEY `published` (`published`),
  KEY `access` (`access`),
  KEY `trash` (`trash`),
  KEY `language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `#__k2_categories`
--

INSERT INTO `#__k2_categories` (`id`, `name`, `alias`, `description`, `parent`, `extraFieldsGroup`, `published`, `access`, `ordering`, `image`, `params`, `trash`, `plugins`, `language`) VALUES
(1, 'Chocolatier''s Table Luxe', 'chocolatier-s-table-luxe', '', 0, 0, 1, 1, 1, '', '{"inheritFrom":"0","theme":"","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"2","num_primary_columns":"1","primaryImgSize":"Large","num_secondary_items":"2","num_secondary_columns":"1","secondaryImgSize":"Large","num_links":"0","num_links_columns":"0","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"0","catTitleItemCounter":"0","catDescription":"0","catImage":"0","catFeedLink":"0","catFeedIcon":"0","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"0","catItemTags":"0","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"0","itemPrintButton":"0","itemEmailButton":"0","itemSocialButton":"0","itemVideoAnchor":"0","itemImageGalleryAnchor":"0","itemCommentsAnchor":"1","itemRating":"0","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"0","itemHits":"0","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"0","itemComments":"1","itemTwitterButton":"0","itemFacebookButton":"0","itemGooglePlusOneButton":"0","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(2, 'Summer Picnic Hamper', 'summer-picnic-hamper', '', 0, 0, 1, 1, 2, '', '{"inheritFrom":"0","theme":"","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"2","num_primary_columns":"1","primaryImgSize":"Large","num_secondary_items":"2","num_secondary_columns":"1","secondaryImgSize":"Large","num_links":"0","num_links_columns":"0","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 1, '', '*'),
(3, 'Making Sandcastles Milk', 'making-sandcastles-milk', '', 0, 0, 1, 1, 3, '', '{"inheritFrom":"0","theme":"","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"2","num_primary_columns":"1","primaryImgSize":"Large","num_secondary_items":"2","num_secondary_columns":"1","secondaryImgSize":"Large","num_links":"0","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 1, '', '*'),
(4, 'Summer Desserts Selection', 'summer-desserts-selection', '', 0, 0, 1, 1, 4, '', '{"inheritFrom":"0","theme":"","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"2","num_primary_columns":"1","primaryImgSize":"Large","num_secondary_items":"2","num_secondary_columns":"1","secondaryImgSize":"Large","num_links":"0","num_links_columns":"0","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 1, '', '*'),
(5, 'Menus', 'menus', '', 0, 1, 1, 1, 5, '', '{"inheritFrom":"0","theme":"menus","num_leading_items":"1200","num_leading_columns":"1","leadingImgSize":"XSmall","num_primary_items":"4","num_primary_columns":"1","primaryImgSize":"XSmall","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"XSmall","num_links":"0","num_links_columns":"0","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(6, 'Main courses', 'main-courses', '<p>Foods and drink</p>', 5, 1, 1, 1, 2, '6.png', '{"inheritFrom":"0","theme":"menus","num_leading_items":"4","num_leading_columns":"1","leadingImgSize":"XSmall","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"XSmall","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"XSmall","num_links":"0","num_links_columns":"0","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"1","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(7, 'Starter menu', 'starter-menu', '<p>Foods and drink</p>', 5, 1, 1, 1, 1, '7.png', '{"inheritFrom":"0","theme":"menus","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"XSmall","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"XSmall","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"XSmall","num_links":"0","num_links_columns":"0","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"1","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(8, 'Hot pot', 'hot-pot', '', 5, 1, 1, 1, 3, '8.png', '{"inheritFrom":"0","theme":"menus","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(9, 'Drink', 'drink', '', 5, 1, 0, 1, 4, '', '{"inheritFrom":"0","theme":"menus","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(10, 'Menus 2', 'menus-2', '', 0, 2, 1, 1, 6, '10.png', '{"inheritFrom":"0","theme":"","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(11, 'Breakfast menus', 'breakfast-menus', '', 0, 3, 1, 1, 7, '11.png', '{"inheritFrom":"0","theme":"","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(12, 'Drink menus', 'drink-menus', '', 0, 4, 1, 1, 8, '12.png', '{"inheritFrom":"0","theme":"","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*');

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_comments`
--

CREATE TABLE IF NOT EXISTS `#__k2_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `commentDate` datetime NOT NULL,
  `commentText` text NOT NULL,
  `commentEmail` varchar(255) NOT NULL,
  `commentURL` varchar(255) NOT NULL,
  `published` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `itemID` (`itemID`),
  KEY `userID` (`userID`),
  KEY `published` (`published`),
  KEY `latestComments` (`published`,`commentDate`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `#__k2_comments`
--

INSERT INTO `#__k2_comments` (`id`, `itemID`, `userID`, `userName`, `commentDate`, `commentText`, `commentEmail`, `commentURL`, `published`) VALUES
(1, 5, 0, 'Kent', '2015-02-11 07:19:32', 'Integer a pellentesque purus, vitae consectetur urna. Cras commodo suscipit magna in porttitor', 'kent@kent.abc', 'http://bowthemes.com', 1),
(2, 5, 124, 'Super User', '2015-02-11 07:20:39', 'Cras commodo suscipit magna in porttitor. Cras quis venenatis dolor. Nunc congue id libero ut feugiat. Donec mollis viverra consectetur.', 'sdfsdf@dgdf.ghd', 'http://bowthemes.com', 1),
(3, 5, 0, 'Kent 2', '2015-02-11 08:22:23', 'Integer a pellentesque purus, vitae consectetur urna. Cras commodo suscipit magna in porttitor', 'vfsdfsdf@sdfsd.dgfs', '', 1),
(4, 5, 0, 'Kent 2', '2015-02-11 09:03:01', 'Integer a pellentesque purus, vitae consectetur urna. Cras commodo suscipit magna in porttitor', 'vfsdfsdf@sdfsd.dgfs', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_extra_fields`
--

CREATE TABLE IF NOT EXISTS `#__k2_extra_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `group` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `group` (`group`),
  KEY `published` (`published`),
  KEY `ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `#__k2_extra_fields`
--

INSERT INTO `#__k2_extra_fields` (`id`, `name`, `value`, `type`, `group`, `published`, `ordering`) VALUES
(7, 'Price', '[{"name":null,"value":"","target":null,"alias":"","required":1,"showNull":0}]', 'textfield', 1, 1, 7),
(8, 'Price', '[{"name":null,"value":"","target":null,"alias":"","required":1,"showNull":0}]', 'textfield', 2, 1, 1),
(9, 'Food 1', '[{"name":null,"value":"","target":null,"alias":"","required":0,"showNull":0}]', 'textfield', 2, 1, 2),
(10, 'Food 2', '[{"name":null,"value":"","target":null,"alias":"","required":0,"showNull":0}]', 'textfield', 2, 1, 3),
(11, 'Food 3', '[{"name":null,"value":"","target":null,"alias":"","required":0,"showNull":0}]', 'textfield', 2, 1, 4),
(12, 'Food 4', '[{"name":null,"value":"","target":null,"alias":"","required":0,"showNull":0}]', 'textfield', 2, 1, 5),
(13, 'Breakfast 1', '[{"name":null,"value":"","target":null,"alias":"","required":1,"showNull":0}]', 'textfield', 3, 1, 1),
(14, 'Drink 1', '[{"name":null,"value":"","target":null,"alias":"","required":1,"showNull":0}]', 'textfield', 4, 1, 1),
(15, 'Breakfast price', '[{"name":null,"value":"","target":null,"alias":"","required":1,"showNull":0}]', 'textfield', 3, 1, 2),
(16, 'Drink price', '[{"name":null,"value":"","target":null,"alias":"","required":1,"showNull":0}]', 'textfield', 4, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_extra_fields_groups`
--

CREATE TABLE IF NOT EXISTS `#__k2_extra_fields_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `#__k2_extra_fields_groups`
--

INSERT INTO `#__k2_extra_fields_groups` (`id`, `name`) VALUES
(1, 'Menus'),
(2, 'Menus 2'),
(3, 'Breakfast menus'),
(4, 'Drink menus');

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_items`
--

CREATE TABLE IF NOT EXISTS `#__k2_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `catid` int(11) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `video` text,
  `gallery` varchar(255) DEFAULT NULL,
  `extra_fields` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `extra_fields_search` text NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL,
  `checked_out` int(10) unsigned NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `trash` smallint(6) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `featured` smallint(6) NOT NULL DEFAULT '0',
  `featured_ordering` int(11) NOT NULL DEFAULT '0',
  `image_caption` text NOT NULL,
  `image_credits` varchar(255) NOT NULL,
  `video_caption` text NOT NULL,
  `video_credits` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL,
  `params` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `metakey` text NOT NULL,
  `plugins` text NOT NULL,
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item` (`published`,`publish_up`,`publish_down`,`trash`,`access`),
  KEY `catid` (`catid`),
  KEY `created_by` (`created_by`),
  KEY `ordering` (`ordering`),
  KEY `featured` (`featured`),
  KEY `featured_ordering` (`featured_ordering`),
  KEY `hits` (`hits`),
  KEY `created` (`created`),
  KEY `language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `#__k2_items`
--

INSERT INTO `#__k2_items` (`id`, `title`, `alias`, `catid`, `published`, `introtext`, `fulltext`, `video`, `gallery`, `extra_fields`, `extra_fields_search`, `created`, `created_by`, `created_by_alias`, `checked_out`, `checked_out_time`, `modified`, `modified_by`, `publish_up`, `publish_down`, `trash`, `access`, `ordering`, `featured`, `featured_ordering`, `image_caption`, `image_credits`, `video_caption`, `video_credits`, `hits`, `params`, `metadesc`, `metadata`, `metakey`, `plugins`, `language`) VALUES
(1, 'How to Marinate and Grill Steaks', 'how-to-marinate-and-grill-steaks', 1, 1, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis massa eu nibh gravida ornare. Integer a pellentesque purus, vitae consectetur urna. Cras commodo suscipit magna in porttitor. Cras quis venenatis dolor. Nunc congue id libero ut feugiat. Donec mollis viverra consectetur.</p>', '', NULL, NULL, '[]', '', '2015-02-10 02:32:36', 124, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2015-02-10 02:32:36', '0000-00-00 00:00:00', 0, 1, 1, 0, 0, '', '', '', '', 4, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(2, 'Lorem ipsum dolor sit amet consectetur', 'how-to-marinate-and-grill-steaks', 1, 1, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis massa eu nibh gravida ornare. Integer a pellentesque purus, vitae consectetur urna. Cras commodo suscipit magna in porttitor. Cras quis venenatis dolor. Nunc congue id libero ut feugiat. Donec mollis viverra consectetur.</p>\r\n', '\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sodales cursus gravida. Quisque non turpis vitae nunc sodales rutrum. Nam felis augue, gravida quis velit at, eleifend placerat libero. Pellentesque feugiat, ipsum in consectetur tempor, orci massa tincidunt quam, eget vestibulum libero diam et justo. Proin accumsan imperdiet lacus in semper. Ut maximus urna a varius malesuada. Mauris lacinia mauris vel est suscipit, et sagittis sapien placerat. Praesent malesuada, metus ac pharetra commodo, nisi orci rutrum ipsum, sit amet semper arcu quam et dui. Pellentesque et ornare est. Fusce iaculis diam velit, eu convallis ipsum ornare ac. Nulla magna nisi, tincidunt tempor urna ut, accumsan molestie neque. Nulla ullamcorper et urna vitae suscipit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla facilisi. Cras quis lobortis erat. Integer bibendum purus id velit gravida molestie.</p>\r\n<p>Sed faucibus in massa feugiat sagittis. Nam ipsum libero, ultricies ac dui et, tristique interdum massa. Aenean quis diam ultrices est porta congue. Quisque condimentum magna sit amet sodales facilisis. Maecenas et vulputate ex. Morbi interdum nisi sed purus pharetra dictum ut quis dolor. Proin viverra ante eget tortor dictum, vel vehicula odio pharetra. Praesent eget eros sem. Proin dignissim, nulla eu scelerisque tempor, turpis lorem interdum neque, et tincidunt purus sapien condimentum justo.</p>\r\n<p> </p>', NULL, NULL, '[]', '', '2015-02-10 02:33:57', 124, '', 0, '0000-00-00 00:00:00', '2015-03-24 03:48:14', 124, '2015-02-10 02:32:36', '0000-00-00 00:00:00', 0, 1, 2, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(3, 'Praesent ut nulla iaculis mauris vehicula', 'how-to-marinate-and-grill-steaks', 1, 1, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis massa eu nibh gravida ornare. Integer a pellentesque purus, vitae consectetur urna. Cras commodo suscipit magna in porttitor. Cras quis venenatis dolor. Nunc congue id libero ut feugiat. Donec mollis viverra consectetur.</p>\r\n', '\r\n<p> Proin eget leo sed est convallis iaculis. Suspendisse felis risus, facilisis quis nisi in, viverra aliquet sapien. Integer non velit ac mauris faucibus ultricies vel a augue. Proin suscipit dignissim velit, sed lacinia enim suscipit ac. Duis porta dignissim nunc at porttitor. Curabitur sit amet est enim. Suspendisse cursus sodales dui, eleifend viverra quam tincidunt vitae. Cras eget pellentesque lacus, sit amet porta libero. In lobortis lacus libero, sed pretium nulla ullamcorper a. In imperdiet pulvinar nibh, sed facilisis massa ornare in. Ut luctus neque vel est consequat, non bibendum arcu laoreet. Quisque finibus scelerisque faucibus. Morbi consectetur, felis aliquet scelerisque imperdiet, dolor est facilisis neque, nec pharetra purus eros nec metus. Phasellus pellentesque tempor neque ac ornare. Maecenas non ante et ligula dapibus consequat id quis tortor. Duis et magna ut nisi maximus dictum.</p>\r\n<p>Curabitur eu pharetra diam. Nulla ornare venenatis erat, at molestie ipsum commodo ut. Praesent facilisis est quis dolor rutrum condimentum. Phasellus quis auctor arcu. Nunc at felis rutrum, consectetur sem vel, efficitur lorem. Pellentesque augue velit, placerat nec ligula id, commodo elementum felis. Cras dui odio, consectetur sed orci ac, egestas commodo nisl. Nunc vitae suscipit ante. Sed et quam vel erat tempor finibus sed a nulla.</p>\r\n<p>Nunc semper nibh diam, a efficitur eros vestibulum ut. Donec et felis ullamcorper, posuere nibh id, hendrerit massa. Quisque ornare neque ac tellus tincidunt fringilla. Aliquam interdum tincidunt dui, sed fringilla ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id diam vel libero volutpat porta a in mi. Nullam id lorem aliquet, suscipit ligula sit amet, molestie massa. Donec sit amet laoreet ipsum, et dictum libero. Donec tempor libero non elit aliquet, eu rutrum felis euismod. Aliquam rutrum faucibus nulla non gravida. Duis pulvinar arcu dui, eu facilisis diam iaculis vel.</p>', NULL, NULL, '[]', '', '2015-02-10 02:34:04', 124, '', 0, '0000-00-00 00:00:00', '2015-03-24 03:47:07', 124, '2015-02-10 02:32:36', '0000-00-00 00:00:00', 0, 1, 3, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(4, 'Top Turkey Dishes in Chicago', 'top-turkey-dishes-in-chicago', 1, 1, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis massa eu nibh gravida ornare. Integer a pellentesque purus, vitae consectetur urna. Cras commodo suscipit magna in porttitor. Cras quis venenatis dolor. Nunc congue id libero ut feugiat. Donec mollis viverra consectetur.</p>\r\n', '\r\n<p> </p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean vitae metus ac lectus ultricies gravida in vel magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur congue enim id neque dictum, eu pretium est finibus. Nunc non sapien et ligula pharetra semper. Nulla non ex convallis, tristique velit et, placerat sem. Nulla purus dui, pulvinar vel vulputate non, consequat at metus. Proin elit purus, tincidunt a consectetur quis, commodo eget mauris. Duis tempus lobortis tellus id interdum. Nunc a faucibus orci. Sed malesuada, nunc ut convallis lacinia, nisl justo euismod tortor, id pretium arcu lorem at nisl. Quisque nec efficitur magna, eget semper purus. Cras dignissim nisl in risus posuere ullamcorper.</p>\r\n<p>In pretium mauris in mollis tincidunt. Donec eget ex ac nibh elementum accumsan eu ut neque. Etiam hendrerit, dui ac bibendum venenatis, magna metus bibendum eros, et hendrerit lorem lorem a purus. Nullam gravida elit ac lectus facilisis, sit amet pulvinar ex lobortis. Aliquam lacinia rutrum erat, at auctor dui lobortis sit amet. Praesent ut nulla iaculis mauris vehicula condimentum id et dui. Nulla suscipit vitae mauris non porta. Nunc pretium nibh quis nulla lacinia, tincidunt pharetra felis placerat.</p>\r\n<p>Proin eget leo sed est convallis iaculis. Suspendisse felis risus, facilisis quis nisi in, viverra aliquet sapien. Integer non velit ac mauris faucibus ultricies vel a augue. Proin suscipit dignissim velit, sed lacinia enim suscipit ac. Duis porta dignissim nunc at porttitor. Curabitur sit amet est enim. Suspendisse cursus sodales dui, eleifend viverra quam tincidunt vitae. Cras eget pellentesque lacus, sit amet porta libero. In lobortis lacus libero, sed pretium nulla ullamcorper a. In imperdiet pulvinar nibh, sed facilisis massa ornare in. Ut luctus neque vel est consequat, non bibendum arcu laoreet. Quisque finibus scelerisque faucibus. Morbi consectetur, felis aliquet scelerisque imperdiet, dolor est facilisis neque, nec pharetra purus eros nec metus. Phasellus pellentesque tempor neque ac ornare. Maecenas non ante et ligula dapibus consequat id quis tortor. Duis et magna ut nisi maximus dictum.</p>', NULL, NULL, '[]', '', '2015-02-10 02:34:04', 124, '', 0, '0000-00-00 00:00:00', '2015-03-24 03:45:46', 124, '2015-02-10 02:32:36', '0000-00-00 00:00:00', 0, 1, 4, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(5, 'Portuguese Plum Duck Food', 'how-to-marinate-and-grill-steaks', 1, 1, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis massa eu nibh gravida ornare. Integer a pellentesque purus, vitae consectetur urna. Cras commodo suscipit magna in porttitor. Cras quis venenatis dolor. Nunc congue id libero ut feugiat. Donec mollis viverra consectetur.</p>\r\n', '\r\n<p>In pretium mauris in mollis tincidunt. Donec eget ex ac nibh elementum accumsan eu ut neque. Etiam hendrerit, dui ac bibendum venenatis, magna metus bibendum eros, et hendrerit lorem lorem a purus. Nullam gravida elit ac lectus facilisis, sit amet pulvinar ex lobortis. Aliquam lacinia rutrum erat, at auctor dui lobortis sit amet. Praesent ut nulla iaculis mauris vehicula condimentum id et dui. Nulla suscipit vitae mauris non porta. Nunc pretium nibh quis nulla lacinia, tincidunt pharetra felis placerat.</p>\r\n<p>Proin eget leo sed est convallis iaculis. Suspendisse felis risus, facilisis quis nisi in, viverra aliquet sapien. Integer non velit ac mauris faucibus ultricies vel a augue. Proin suscipit dignissim velit, sed lacinia enim suscipit ac. Duis porta dignissim nunc at porttitor. Curabitur sit amet est enim. Suspendisse cursus sodales dui, eleifend viverra quam tincidunt vitae. Cras eget pellentesque lacus, sit amet porta libero. In lobortis lacus libero, sed pretium nulla ullamcorper a. In imperdiet pulvinar nibh, sed facilisis massa ornare in. Ut luctus neque vel est consequat, non bibendum arcu laoreet. Quisque finibus scelerisque faucibus. Morbi consectetur, felis aliquet scelerisque imperdiet, dolor est facilisis neque, nec pharetra purus eros nec metus. Phasellus pellentesque tempor neque ac ornare. Maecenas non ante et ligula dapibus consequat id quis tortor. Duis et magna ut nisi maximus dictum.</p>\r\n<p> </p>', NULL, NULL, '[]', '', '2015-02-10 02:34:11', 124, '', 0, '0000-00-00 00:00:00', '2015-03-24 03:44:16', 124, '2015-02-10 02:32:36', '0000-00-00 00:00:00', 0, 1, 5, 0, 0, '', '', '', '', 121, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(6, 'Curabitur auctor lorem massa metus tempus at', 'how-to-marinate-and-grill-steaks', 1, 1, '<p>Etiam hendrerit gravida risus, sit amet sollicitudin magna feugiat vitae. Donec tristique tempor augue, et sagittis enim vulputate eget. Fusce mollis quis nunc in gravida. Sed consectetur sagittis urna, non cursus massa placerat eu.</p>\r\n', '\r\n<p>Etiam hendrerit gravida risus, sit amet sollicitudin magna feugiat vitae. Donec tristique tempor augue, et sagittis enim vulputate eget. Fusce mollis quis nunc in gravida. Sed consectetur sagittis urna, non cursus massa placerat eu. Curabitur gravida lorem ligula, in pharetra eros condimentum id. Donec facilisis quam eget turpis varius, sed consectetur tortor suscipit. Vestibulum venenatis, nulla ut ultrices accumsan, diam arcu sollicitudin purus, vitae cursus libero justo sed quam. Etiam vel nunc risus. In auctor dapibus odio sed eleifend. Nam molestie dignissim velit, ut cursus risus. Etiam tempus sagittis odio, ut sodales turpis commodo vitae. Aenean volutpat nibh id elit auctor feugiat. Proin maximus eget leo vel aliquam. Morbi vel sem semper, pretium justo eu, euismod odio. Fusce ornare, odio eget imperdiet fermentum, mauris velit aliquam ante, ac ornare quam risus vitae elit. Morbi dictum, tortor sed gravida porta, urna mauris efficitur magna, vitae accumsan lectus nulla condimentum tortor.</p>\r\n<p>Praesent ac erat a sem tincidunt scelerisque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean luctus tellus eleifend lacus ullamcorper, eu mollis purus ultrices. Maecenas posuere finibus eros, at dictum massa pharetra sed. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec accumsan consequat massa, ut semper ipsum consequat feugiat. Donec molestie turpis vitae ex viverra venenatis. Suspendisse risus tortor, suscipit ac finibus eu, convallis eget neque. Donec odio nulla, sagittis lobortis euismod cursus, egestas et neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur rutrum felis neque, ac vestibulum quam sagittis vel. Mauris pharetra nisi in massa condimentum, quis pulvinar leo ultrices. Nam condimentum, turpis at ullamcorper interdum, felis purus consequat nunc, ac ullamcorper sem turpis eget tellus. Nulla facilisi.</p>\r\n<p> </p>', NULL, NULL, '[]', '', '2015-02-10 02:34:11', 124, '', 0, '0000-00-00 00:00:00', '2015-03-24 03:39:14', 124, '2015-02-10 02:32:36', '0000-00-00 00:00:00', 0, 1, 6, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(7, 'Sed ut perspiciatis unde omnis iste natus', 'how-to-marinate-and-grill-steaks', 1, 1, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis massa eu nibh gravida ornare. Integer a pellentesque purus, vitae consectetur urna. Cras commodo suscipit magna in porttitor. Cras quis venenatis dolor. Nunc congue id libero ut feugiat. Donec mollis viverra consectetur.</p>\r\n', '\r\n<p>Donec ultricies aliquam augue, id facilisis lacus aliquam sit amet. Nam quis imperdiet leo, non mattis nisi. Duis commodo, dolor sit amet consequat tincidunt, arcu nibh interdum massa, eget bibendum lorem felis vel lectus. Fusce ac egestas quam. Mauris consectetur efficitur urna, eu eleifend velit luctus vitae. Duis quis tortor vel dolor vestibulum ullamcorper eu sed ligula. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus neque ligula, rhoncus eget nulla quis, dapibus sollicitudin orci. Nulla enim neque, lacinia at lobortis in, accumsan at lacus. Sed ornare risus id arcu tincidunt, eget porta lacus fringilla. Pellentesque aliquam odio felis, non luctus magna ullamcorper sit amet.</p>\r\n<p>In id magna eu arcu euismod interdum. Aenean efficitur quam ac augue aliquam, eget ullamcorper dui vehicula. Donec scelerisque eleifend arcu nec vulputate. Mauris vitae luctus est. Vivamus felis arcu, consequat sed velit sed, cursus rutrum lorem. Curabitur sed placerat eros. Cras at faucibus nunc. Integer semper metus nibh, eu convallis orci sagittis et. Fusce iaculis, tortor sed iaculis semper, ante nunc molestie odio, ac viverra lacus turpis sit amet mauris. In ac feugiat purus.</p>\r\n<p>Etiam hendrerit gravida risus, sit amet sollicitudin magna feugiat vitae. Donec tristique tempor augue, et sagittis enim vulputate eget. Fusce mollis quis nunc in gravida. Sed consectetur sagittis urna, non cursus massa placerat eu. Curabitur gravida lorem ligula, in pharetra eros condimentum id. Donec facilisis quam eget turpis varius, sed consectetur tortor suscipit. Vestibulum venenatis, nulla ut ultrices accumsan, diam arcu sollicitudin purus, vitae cursus libero justo sed quam. Etiam vel nunc risus. In auctor dapibus odio sed eleifend. Nam molestie dignissim velit, ut cursus risus. Etiam tempus sagittis odio, ut sodales turpis commodo vitae. Aenean volutpat nibh id elit auctor feugiat. Proin maximus eget leo vel aliquam. Morbi vel sem semper, pretium justo eu, euismod odio. Fusce ornare, odio eget imperdiet fermentum, mauris velit aliquam ante, ac ornare quam risus vitae elit. Morbi dictum, tortor sed gravida porta, urna mauris efficitur magna, vitae accumsan lectus nulla condimentum tortor.</p>\r\n<p> </p>', NULL, NULL, '[]', '', '2015-02-10 02:34:11', 124, '', 0, '0000-00-00 00:00:00', '2015-03-24 03:38:19', 124, '2015-02-10 02:32:36', '0000-00-00 00:00:00', 0, 1, 7, 0, 0, '', '', '', '', 63, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(8, 'How to Marinate and Grill Steaks', 'how-to-marinate-and-grill-steaks', 1, 1, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis massa eu nibh gravida ornare. Integer a pellentesque purus, vitae consectetur urna. Cras commodo suscipit magna in porttitor. Cras quis venenatis dolor. Nunc congue id libero ut feugiat. Donec mollis viverra consectetur.</p>', '', NULL, NULL, '[]', '', '2015-02-10 02:34:11', 124, '', 0, '0000-00-00 00:00:00', '2015-03-24 08:14:11', 124, '2015-02-10 02:32:36', '0000-00-00 00:00:00', 0, 1, 8, 0, 0, '', '', '', '', 40, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(9, 'Charleston Chicken', 'charleston-chicken', 6, 0, '', '', NULL, NULL, '[{"id":"1","value":"Tender chicken breast"},{"id":"2","value":"shrimp"},{"id":"3","value":"kielbasa"},{"id":"4","value":"corn and shallots sauteed in asherry butter"},{"id":"5","value":""},{"id":"6","value":""},{"id":"7","value":"25$"}]', 'Tender chicken breast shrimp kielbasa corn and shallots sauteed in asherry butter   25$ ', '2015-02-12 08:36:12', 124, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2015-02-12 08:36:12', '0000-00-00 00:00:00', 1, 1, 1, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(10, 'Copy of Charleston Chicken', 'charleston-chicken', 6, 0, '', '', NULL, NULL, '[{"id":"1","value":"Tender chicken breast"},{"id":"2","value":"shrimp"},{"id":"3","value":"kielbasa"},{"id":"4","value":"corn and shallots sauteed in asherry butter"},{"id":"5","value":""},{"id":"6","value":""},{"id":"7","value":"25$"}]', 'Tender chicken breast shrimp kielbasa corn and shallots sauteed in asherry butter   25$ ', '2015-02-12 08:38:05', 124, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2015-02-12 08:36:12', '0000-00-00 00:00:00', 1, 1, 2, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(11, 'Drunken Pot Roast', 'drunken-pot-roast', 6, 1, '<p>Certified Black Angus sirloin simmered in ale, onions, brown sugar and spices. Accompanied by mashed skin-on red potatoes and Southern.</p>', '', NULL, NULL, '[{"id":"7","value":"25$"}]', '25$ ', '2015-02-12 08:38:12', 124, '', 0, '0000-00-00 00:00:00', '2015-02-13 01:44:23', 124, '2015-02-12 08:36:12', '0000-00-00 00:00:00', 0, 1, 3, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(12, 'Chopped Cobb & egg SALAD', 'chopped-cobb-egg-salad', 6, 1, '<p>Four large grilled shrimp marinated in Southside''s Low Country Lager chili sauce, brown sugar and garlic then plated.</p>', '', NULL, NULL, '[{"id":"7","value":"25$"}]', '25$ ', '2015-02-12 08:38:12', 124, '', 0, '0000-00-00 00:00:00', '2015-02-13 01:44:03', 124, '2015-02-12 08:36:12', '0000-00-00 00:00:00', 0, 1, 4, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(13, 'Southside Seafood Salad', 'southside-seafood-salad', 6, 1, '<p>Grilled New Orleans BBQ shrimp and lemon pepper tuna served over chopped greens topped with sliced cucumbers</p>', '', NULL, NULL, '[{"id":"7","value":"25$"}]', '25$ ', '2015-02-12 08:38:20', 124, '', 0, '0000-00-00 00:00:00', '2015-02-13 01:43:42', 124, '2015-02-12 08:36:12', '0000-00-00 00:00:00', 0, 1, 5, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(14, 'BBQ Veal Steak', 'bbq-veal-steak', 6, 1, '<p>Homemade recipe of ground beef, pork, and veal topped with a tomato bacon gravy. Accompanied by mashed skin-on red potatoes</p>', '', NULL, NULL, '[{"id":"7","value":"25$"}]', '25$ ', '2015-02-12 08:38:20', 124, '', 0, '0000-00-00 00:00:00', '2015-02-13 01:43:20', 124, '2015-02-12 08:36:12', '0000-00-00 00:00:00', 0, 1, 6, 0, 0, '', '', '', '', 1, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(15, 'Charleston Chicken', 'charleston-chicken', 6, 1, '<p>Tender chicken breast, shrimp, kielbasa, corn and shallots sauteed in asherry butter.</p>', '', NULL, NULL, '[{"id":"7","value":"25$"}]', '25$ ', '2015-02-12 08:38:20', 124, '', 0, '0000-00-00 00:00:00', '2015-02-13 01:43:01', 124, '2015-02-12 08:36:12', '0000-00-00 00:00:00', 0, 1, 7, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(16, 'Classic Chicken Caesar', 'charleston-chicken', 6, 1, '<p>Our classic Creole Caesar topped with an 8-ounce grilled skinless chicken breast</p>', '', NULL, NULL, '[{"id":"7","value":"25$"}]', '25$ ', '2015-02-12 08:38:20', 124, '', 0, '0000-00-00 00:00:00', '2015-02-13 01:42:30', 124, '2015-02-12 08:36:12', '0000-00-00 00:00:00', 0, 1, 8, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*');
INSERT INTO `#__k2_items` (`id`, `title`, `alias`, `catid`, `published`, `introtext`, `fulltext`, `video`, `gallery`, `extra_fields`, `extra_fields_search`, `created`, `created_by`, `created_by_alias`, `checked_out`, `checked_out_time`, `modified`, `modified_by`, `publish_up`, `publish_down`, `trash`, `access`, `ordering`, `featured`, `featured_ordering`, `image_caption`, `image_credits`, `video_caption`, `video_credits`, `hits`, `params`, `metadesc`, `metadata`, `metakey`, `plugins`, `language`) VALUES
(17, 'Copy of Classic Chicken Caesar', 'charleston-chicken', 7, 1, '<p>Our classic Creole Caesar topped with an 8-ounce grilled skinless chicken breast</p>', '', NULL, NULL, '[{"id":"7","value":"25$"}]', '25$ ', '2015-02-13 01:46:36', 124, '', 0, '0000-00-00 00:00:00', '2015-02-13 01:50:05', 124, '2015-02-12 08:36:12', '0000-00-00 00:00:00', 0, 1, 6, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(18, 'Copy of Charleston Chicken', 'charleston-chicken', 7, 1, '<p>Tender chicken breast, shrimp, kielbasa, corn and shallots sauteed in asherry butter.</p>', '', NULL, NULL, '[{"id":"7","value":"25$"}]', '25$ ', '2015-02-13 01:46:36', 124, '', 0, '0000-00-00 00:00:00', '2015-02-13 01:49:53', 124, '2015-02-12 08:36:12', '0000-00-00 00:00:00', 0, 1, 5, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(19, 'Copy of BBQ Veal Steak', 'bbq-veal-steak', 7, 1, '<p>Homemade recipe of ground beef, pork, and veal topped with a tomato bacon gravy. Accompanied by mashed skin-on red potatoes</p>', '', NULL, NULL, '[{"id":"7","value":"25$"}]', '25$ ', '2015-02-13 01:46:36', 124, '', 0, '0000-00-00 00:00:00', '2015-02-13 01:49:41', 124, '2015-02-12 08:36:12', '0000-00-00 00:00:00', 0, 1, 4, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(20, 'Copy of Southside Seafood Salad', 'southside-seafood-salad', 7, 1, '<p>Grilled New Orleans BBQ shrimp and lemon pepper tuna served over chopped greens topped with sliced cucumbers</p>', '', NULL, NULL, '[{"id":"7","value":"25$"}]', '25$ ', '2015-02-13 01:46:36', 124, '', 0, '0000-00-00 00:00:00', '2015-02-13 01:49:28', 124, '2015-02-12 08:36:12', '0000-00-00 00:00:00', 0, 1, 3, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(21, 'Copy of Chopped Cobb & egg SALAD', 'chopped-cobb-egg-salad', 7, 1, '<p>Four large grilled shrimp marinated in Southside''s Low Country Lager chili sauce, brown sugar and garlic then plated.</p>', '', NULL, NULL, '[{"id":"7","value":"25$"}]', '25$ ', '2015-02-13 01:46:36', 124, '', 0, '0000-00-00 00:00:00', '2015-02-13 01:49:02', 124, '2015-02-12 08:36:12', '0000-00-00 00:00:00', 0, 1, 2, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(22, 'Copy of Drunken Pot Roast', 'drunken-pot-roast', 7, 1, '<p>Certified Black Angus sirloin simmered in ale, onions, brown sugar and spices. Accompanied by mashed skin-on red potatoes and Southern.</p>', '', NULL, NULL, '[{"id":"7","value":"25$"}]', '25$ ', '2015-02-13 01:46:36', 124, '', 0, '0000-00-00 00:00:00', '2015-02-13 01:48:37', 124, '2015-02-12 08:36:12', '0000-00-00 00:00:00', 0, 1, 1, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(23, 'Copy of Classic Chicken Caesar', 'charleston-chicken', 8, 1, '<p>Our classic Creole Caesar topped with an 8-ounce grilled skinless chicken breast</p>', '', NULL, NULL, '[{"id":"7","value":"25$"}]', '25$ ', '2015-03-02 08:12:54', 124, '', 0, '0000-00-00 00:00:00', '2015-03-02 08:13:35', 124, '2015-02-12 08:36:12', '0000-00-00 00:00:00', 0, 1, 2, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(24, 'Copy of Charleston Chicken', 'charleston-chicken', 8, 1, '<p>Tender chicken breast, shrimp, kielbasa, corn and shallots sauteed in asherry butter.</p>', '', NULL, NULL, '[{"id":"7","value":"25$"}]', '25$ ', '2015-03-02 08:12:54', 124, '', 0, '0000-00-00 00:00:00', '2015-03-02 08:13:18', 124, '2015-02-12 08:36:12', '0000-00-00 00:00:00', 0, 1, 1, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(25, 'Dinner menus', 'dinner-menus', 10, 1, '', '', NULL, NULL, '[{"id":"8","value":"34$"},{"id":"9","value":"Chili Chicken - tempura style, cool cucumbers, chili sauce"},{"id":"10","value":"Tempura vegetables, spicy aioli"},{"id":"11","value":"Cheeseburger Sliders"},{"id":"12","value":""}]', '34$ Chili Chicken - tempura style, cool cucumbers, chili sauce Tempura vegetables, spicy aioli Cheeseburger Sliders  ', '2015-03-03 02:43:47', 124, '', 0, '0000-00-00 00:00:00', '2015-03-24 03:33:14', 124, '2015-03-03 02:43:47', '0000-00-00 00:00:00', 0, 1, 1, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(26, 'Business menu sets', 'business-menu-sets', 10, 1, '<p>Chili Chicken - tempura style, cool cucumbers, chili sauce</p>\r\n<p>Tempura vegetables, spicy aioli</p>\r\n<p>Cheeseburger Sliders</p>', '', NULL, NULL, '[{"id":"8","value":"54$"},{"id":"9","value":"Chili Chicken - tempura style, cool cucumbers, chili sauce"},{"id":"10","value":"Tempura vegetables, spicy aioli"},{"id":"11","value":"Cheeseburger Sliders"},{"id":"12","value":""}]', '54$ Chili Chicken - tempura style, cool cucumbers, chili sauce Tempura vegetables, spicy aioli Cheeseburger Sliders  ', '2015-03-03 02:51:01', 124, '', 0, '0000-00-00 00:00:00', '2015-03-24 03:30:25', 124, '2015-03-03 02:43:47', '0000-00-00 00:00:00', 0, 1, 2, 0, 0, '', '', '', '', 1, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(27, 'Breakfast menus', 'breakfast-menus', 11, 1, '', '', NULL, NULL, '[{"id":"13","value":"Cheeseburger Sliders"},{"id":"15","value":"34$"}]', 'Cheeseburger Sliders 34$ ', '2015-03-24 03:46:28', 124, '', 0, '0000-00-00 00:00:00', '2015-03-24 03:53:03', 124, '2015-03-24 03:46:28', '0000-00-00 00:00:00', 0, 1, 1, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(28, 'Drinks menus', 'drinks-menus', 12, 1, '', '', NULL, NULL, '[{"id":"14","value":"Cheeseburger Sliders"},{"id":"16","value":"34$"}]', 'Cheeseburger Sliders 34$ ', '2015-03-24 03:48:40', 124, '', 0, '0000-00-00 00:00:00', '2015-03-24 03:52:40', 124, '2015-03-24 03:48:40', '0000-00-00 00:00:00', 0, 1, 1, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(29, 'Drinks menus', 'drinks-menus', 12, 1, '', '', NULL, NULL, '[{"id":"14","value":"Cheeseburger Sliders"},{"id":"16","value":"34$"}]', 'Cheeseburger Sliders 34$ ', '2015-03-24 03:53:17', 124, '', 0, '0000-00-00 00:00:00', '2015-03-24 03:54:08', 124, '2015-03-24 03:48:40', '0000-00-00 00:00:00', 0, 1, 2, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(30, 'Breakfast menus', 'breakfast-menus', 11, 1, '', '', NULL, NULL, '[{"id":"13","value":"Cheeseburger Sliders"},{"id":"15","value":"34$"}]', 'Cheeseburger Sliders 34$ ', '2015-03-24 03:53:17', 124, '', 0, '0000-00-00 00:00:00', '2015-03-24 03:53:51', 124, '2015-03-24 03:46:28', '0000-00-00 00:00:00', 0, 1, 2, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*');

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_rating`
--

CREATE TABLE IF NOT EXISTS `#__k2_rating` (
  `itemID` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_tags`
--

CREATE TABLE IF NOT EXISTS `#__k2_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `#__k2_tags`
--

INSERT INTO `#__k2_tags` (`id`, `name`, `published`) VALUES
(1, 'Milk', 1),
(2, 'Chocolate', 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_tags_xref`
--

CREATE TABLE IF NOT EXISTS `#__k2_tags_xref` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tagID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tagID` (`tagID`),
  KEY `itemID` (`itemID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `#__k2_tags_xref`
--

INSERT INTO `#__k2_tags_xref` (`id`, `tagID`, `itemID`) VALUES
(1, 1, 1),
(2, 2, 1),
(33, 1, 7),
(34, 2, 7),
(37, 1, 6),
(38, 2, 6),
(41, 1, 5),
(42, 2, 5),
(45, 1, 4),
(46, 2, 4),
(51, 1, 3),
(52, 2, 3),
(55, 1, 2),
(56, 2, 2),
(57, 1, 8),
(58, 2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_users`
--

CREATE TABLE IF NOT EXISTS `#__k2_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `gender` enum('m','f') NOT NULL DEFAULT 'm',
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `group` int(11) NOT NULL DEFAULT '0',
  `plugins` text NOT NULL,
  `ip` varchar(15) NOT NULL,
  `hostname` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userID` (`userID`),
  KEY `group` (`group`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__k2_users`
--

INSERT INTO `#__k2_users` (`id`, `userID`, `userName`, `gender`, `description`, `image`, `url`, `group`, `plugins`, `ip`, `hostname`, `notes`) VALUES
(1, 124, 'Super User', 'm', '<p>Sed sagittis massa eu nibh gravida ornare. Integer a pellentesque purus, vitae consectetur urna. Cras commodo suscipit magna in porttitor</p>', '1.jpg', '', 0, '', '::1', 'KIEN-DESKTOP-PC', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_user_groups`
--

CREATE TABLE IF NOT EXISTS `#__k2_user_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `permissions` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__languages`
--

CREATE TABLE IF NOT EXISTS `#__languages` (
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
-- Dumping data for table `#__languages`
--

INSERT INTO `#__languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__menu`
--

CREATE TABLE IF NOT EXISTS `#__menu` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=516 ;

--
-- Dumping data for table `#__menu`
--

INSERT INTO `#__menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 141, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 7, 16, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 8, 9, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 10, 11, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 12, 13, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 14, 15, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 17, 22, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 18, 19, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 20, 21, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 23, 28, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 24, 25, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 26, 27, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 29, 34, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 30, 31, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 32, 33, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 51, 52, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 39, 40, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 41, 46, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 42, 43, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 44, 45, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 35, 36, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 37, 38, 0, '*', 1),
(201, 'usermenu', 'Your Profile', 'your-profile', '', 'your-profile', 'index.php?option=com_users&view=profile', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 53, 54, 0, '*', 0),
(233, 'mainmenu', 'Menu', 'menu', 'Black Angus sirloin simmered in ale', 'menu', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=5', 'component', 1, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories":["5"],"singleCatOrdering":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 5, 6, 0, '*', 0),
(238, 'mainmenu', 'Blog', 'blog', 'Class aptent taciti sociosqu ad', 'blog', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=1', 'component', 1, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories":["1"],"singleCatOrdering":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 55, 64, 0, '*', 0),
(294, 'mainmenu', 'About us', 'about-us', '', 'about-us', 'index.php?option=com_content&view=article&id=74', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"0","show_intro":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":" cog_heading","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 3, 4, 0, '*', 0),
(435, 'mainmenu', 'Home', 'homepage', '', 'homepage', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":["9"],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"1","num_columns":"1","num_links":"0","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"1","link_titles":"","show_intro":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"","show_readmore":"1","show_readmore_title":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":" hide_mainbody","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 1, 2, 1, '*', 0),
(445, 'mainmenu', 'K2 category', 'k2-category', 'Class aptent taciti sociosqu ad', 'blog/k2-category', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=1', 'component', 1, 238, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories":["1"],"singleCatOrdering":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 56, 57, 0, '*', 0),
(446, 'mainmenu', 'K2 tag', 'shop', '', 'blog/shop', 'index.php?option=com_k2&view=itemlist&layout=tag&tag=Milk&task=tag', 'component', 1, 238, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"theme":"default","tagOrdering":"","tagFeedLink":"0","tagFeedIcon":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 58, 59, 0, '*', 0),
(448, 'right-menu', 'Reservations', 'reservations', '', 'reservations', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":["9"],"layout_type":"blog","num_leading_articles":"0","num_intro_articles":"0","num_columns":"0","num_links":"0","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":" hide_mainbody cog_heading","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 99, 100, 0, '*', 0),
(449, 'usermenu', 'Submit an Article', 'submit-an-article', '', 'submit-an-article', 'index.php?option=com_content&view=form&layout=edit', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 65, 66, 0, '*', 0),
(450, 'usermenu', 'Submit a Web Link', 'submit-a-web-link', '', 'submit-a-web-link', 'index.php?option=com_weblinks&view=form&layout=edit', 'component', 1, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 67, 68, 0, '*', 0),
(455, 'right-menu', 'J! pages', 'example-pages', '', 'example-pages', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 101, 120, 0, '*', 0),
(468, 'main', 'COM_K2', 'com-k2', '', 'com-k2', 'index.php?option=com_k2', 'component', 0, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 1, '../media/k2/assets/images/system/k2_16x16.png', 0, '', 69, 90, 0, '', 1),
(469, 'main', 'K2_ITEMS', 'k2-items', '', 'com-k2/k2-items', 'index.php?option=com_k2&view=items', 'component', 0, 468, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 70, 71, 0, '', 1),
(470, 'main', 'K2_CATEGORIES', 'k2-categories', '', 'com-k2/k2-categories', 'index.php?option=com_k2&view=categories', 'component', 0, 468, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 72, 73, 0, '', 1),
(471, 'main', 'K2_TAGS', 'k2-tags', '', 'com-k2/k2-tags', 'index.php?option=com_k2&view=tags', 'component', 0, 468, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 74, 75, 0, '', 1),
(472, 'main', 'K2_COMMENTS', 'k2-comments', '', 'com-k2/k2-comments', 'index.php?option=com_k2&view=comments', 'component', 0, 468, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 76, 77, 0, '', 1),
(473, 'main', 'K2_USERS', 'k2-users', '', 'com-k2/k2-users', 'index.php?option=com_k2&view=users', 'component', 0, 468, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 78, 79, 0, '', 1),
(474, 'main', 'K2_USER_GROUPS', 'k2-user-groups', '', 'com-k2/k2-user-groups', 'index.php?option=com_k2&view=usergroups', 'component', 0, 468, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 80, 81, 0, '', 1),
(475, 'main', 'K2_EXTRA_FIELDS', 'k2-extra-fields', '', 'com-k2/k2-extra-fields', 'index.php?option=com_k2&view=extrafields', 'component', 0, 468, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 82, 83, 0, '', 1),
(476, 'main', 'K2_EXTRA_FIELD_GROUPS', 'k2-extra-field-groups', '', 'com-k2/k2-extra-field-groups', 'index.php?option=com_k2&view=extrafieldsgroups', 'component', 0, 468, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 84, 85, 0, '', 1),
(477, 'main', 'K2_MEDIA_MANAGER', 'k2-media-manager', '', 'com-k2/k2-media-manager', 'index.php?option=com_k2&view=media', 'component', 0, 468, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 86, 87, 0, '', 1),
(478, 'main', 'K2_INFORMATION', 'k2-information', '', 'com-k2/k2-information', 'index.php?option=com_k2&view=info', 'component', 0, 468, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 88, 89, 0, '', 1),
(479, 'mainmenu', 'K2 user', 'k2-user', '', 'blog/k2-user', 'index.php?option=com_k2&view=itemlist&layout=user&id=124&task=user', 'component', 1, 238, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"theme":"default","userCategoriesFilter":["1"],"userOrdering":"","userFeedLink":"0","userFeedIcon":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 60, 61, 0, '*', 0),
(480, 'mainmenu', 'K2 lastest', 'k2-lastest', '', 'blog/k2-lastest', 'index.php?option=com_k2&view=latest&layout=latest', 'component', 1, 238, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"theme":"default","source":"1","latestItemsCols":"1","latestItemsLimit":"3","latestItemsDisplayEffect":"all","userIDs":["124"],"userName":"0","userImage":"0","userDescription":"0","userURL":"0","userEmail":"0","userFeed":"0","categoryIDs":["1"],"categoryTitle":"0","categoryDescription":"0","categoryImage":"0","categoryFeed":"0","latestItemTitle":"1","latestItemTitleLinked":"1","latestItemDateCreated":"1","latestItemImage":"1","latestItemImageSize":"Large","latestItemVideo":"1","latestItemVideoWidth":"","latestItemVideoHeight":"","latestItemAudioWidth":"","latestItemAudioHeight":"","latestItemVideoAutoPlay":"0","latestItemIntroText":"1","latestItemCategory":"0","latestItemTags":"0","latestItemReadMore":"1","latestItemCommentsAnchor":"0","feedLink":"1","latestItemK2Plugins":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 62, 63, 0, '*', 0),
(481, 'right-menu', 'Contact us', 'contact-us', '', 'contact-us', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"presentation_style":"","show_contact_category":"","show_contact_list":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":" cog_heading","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 121, 122, 0, '*', 0),
(482, 'k2-menu', 'Chocolatier''s Table Luxe', 'chocolatier-s-table-luxe', '', 'chocolatier-s-table-luxe', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=1', 'component', 1, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories":["1"],"singleCatOrdering":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 91, 92, 0, '*', 0),
(483, 'k2-menu', 'Summer Picnic Hamper', 'summer-picnic-hamper', '', 'summer-picnic-hamper', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=2', 'component', 1, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories":["2"],"singleCatOrdering":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 93, 94, 0, '*', 0),
(484, 'k2-menu', 'Making Sandcastles Milk', 'making-sandcastles-milk', '', 'making-sandcastles-milk', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=3', 'component', 1, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories":["3"],"singleCatOrdering":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 95, 96, 0, '*', 0),
(485, 'k2-menu', 'Summer Desserts Selection', 'summer-desserts-selection', '', 'summer-desserts-selection', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=4', 'component', 1, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories":["4"],"singleCatOrdering":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 97, 98, 0, '*', 0),
(486, 'right-menu', 'Joomla category', 'joomla-category', '', 'example-pages/joomla-category', 'index.php?option=com_content&view=category&layout=blog&id=78', 'component', 1, 455, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"1","num_intro_articles":"1","num_columns":"1","num_links":"1","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 102, 107, 0, '*', 0),
(487, 'right-menu', 'Featured article', 'featured-article', '', 'example-pages/featured-article', 'index.php?option=com_content&view=featured', 'component', 1, 455, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":["78"],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"1","num_links":"0","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 108, 113, 0, '*', 0),
(488, 'right-menu', 'Joomla single article', 'joomla-single-article', '', 'example-pages/joomla-single-article', 'index.php?option=com_content&view=article&id=68', 'component', 1, 455, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 114, 119, 0, '*', 0),
(499, 'mainmenu', 'Menu item', '2015-03-09-07-11-01', '', 'example-pages/joomla-category/2015-03-09-07-11-01', '', 'url', -2, 486, 3, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 103, 104, 0, '*', 0),
(500, 'mainmenu', 'Menu item', '2015-03-09-07-11-24', '', 'example-pages/joomla-category/2015-03-09-07-11-24', '', 'url', -2, 486, 3, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 105, 106, 0, '*', 0),
(501, 'mainmenu', 'Menu item', '2015-03-09-07-11-47', '', 'example-pages/featured-article/2015-03-09-07-11-47', '', 'url', -2, 487, 3, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 109, 110, 0, '*', 0),
(502, 'mainmenu', 'Menu item', '2015-03-09-07-12-04', '', 'example-pages/featured-article/2015-03-09-07-12-04', '', 'url', -2, 487, 3, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 111, 112, 0, '*', 0),
(503, 'mainmenu', 'Menu item', '2015-03-09-07-14-45', '', 'example-pages/joomla-single-article/2015-03-09-07-14-45', '', 'url', -2, 488, 3, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 115, 116, 0, '*', 0),
(504, 'mainmenu', 'Menu item', '2015-03-09-07-16-03', '', 'example-pages/joomla-single-article/2015-03-09-07-16-03', '', 'url', -2, 488, 3, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 117, 118, 0, '*', 0),
(505, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 47, 48, 0, '', 1),
(506, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 49, 50, 0, '*', 1),
(507, 'main', 'AcyMailing', 'acymailing', '', 'acymailing', 'index.php?option=com_acymailing', 'component', 0, 1, 1, 10023, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-acymailing.png', 0, '', 123, 140, 0, '', 1),
(508, 'main', 'Users', 'users', '', 'acymailing/users', 'index.php?option=com_acymailing&ctrl=subscriber', 'component', 0, 507, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-users.png', 0, '', 124, 125, 0, '', 1),
(509, 'main', 'Lists', 'lists', '', 'acymailing/lists', 'index.php?option=com_acymailing&ctrl=list', 'component', 0, 507, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-acylist.png', 0, '', 126, 127, 0, '', 1),
(510, 'main', 'Newsletters', 'newsletters', '', 'acymailing/newsletters', 'index.php?option=com_acymailing&ctrl=newsletter', 'component', 0, 507, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-newsletter.png', 0, '', 128, 129, 0, '', 1),
(511, 'main', 'Templates', 'templates', '', 'acymailing/templates', 'index.php?option=com_acymailing&ctrl=template', 'component', 0, 507, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-acytemplate.png', 0, '', 130, 131, 0, '', 1),
(512, 'main', 'Queue', 'queue', '', 'acymailing/queue', 'index.php?option=com_acymailing&ctrl=queue', 'component', 0, 507, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-process.png', 0, '', 132, 133, 0, '', 1),
(513, 'main', 'Statistics', 'statistics', '', 'acymailing/statistics', 'index.php?option=com_acymailing&ctrl=stats', 'component', 0, 507, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-stats.png', 0, '', 134, 135, 0, '', 1),
(514, 'main', 'Configuration', 'configuration', '', 'acymailing/configuration', 'index.php?option=com_acymailing&ctrl=cpanel', 'component', 0, 507, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-acyconfig.png', 0, '', 136, 137, 0, '', 1),
(515, 'main', 'Update_About', 'update-about', '', 'acymailing/update-about', 'index.php?option=com_acymailing&ctrl=update', 'component', 0, 507, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-update.png', 0, '', 138, 139, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__menu_types`
--

CREATE TABLE IF NOT EXISTS `#__menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `#__menu_types`
--

INSERT INTO `#__menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(2, 'usermenu', 'User Menu', 'A Menu for logged-in Users'),
(6, 'mainmenu', 'Main Menu', 'Simple Home Menu'),
(7, 'k2-menu', 'K2 menu', ''),
(8, 'right-menu', 'Right menu', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__messages`
--

CREATE TABLE IF NOT EXISTS `#__messages` (
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
-- Table structure for table `#__messages_cfg`
--

CREATE TABLE IF NOT EXISTS `#__messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__modules`
--

CREATE TABLE IF NOT EXISTS `#__modules` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=116 ;

--
-- Dumping data for table `#__modules`
--

INSERT INTO `#__modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 0, 'Main Menu', '', '', 1, 'mainmenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 0, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 0, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 0, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 0, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 0, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 0, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 0, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 0, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 0, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 0, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 0, 'Login Form', '', '', 2, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(19, 0, 'User Menu', '', '', 3, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 2, 1, '{"menutype":"usermenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 0, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 0, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 0, 'K2 Comments', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_k2_comments', 1, 1, '', 0, '*'),
(88, 0, 'K2 Content', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_k2_content', 1, 1, '', 0, '*'),
(89, 0, 'Tags', '', '', 3, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_tools', 1, 1, '{"moduleclass_sfx":"","module_usage":"7","archiveItemsCounter":"1","archiveCategory":"0","authors_module_category":"0","authorItemsCounter":"1","authorAvatar":"1","authorAvatarWidthSelect":"custom","authorAvatarWidth":"50","authorLatestItem":"1","calendarCategory":"0","home":"","seperator":"","root_id":"0","end_level":"","categoriesListOrdering":"","categoriesListItemsCounter":"1","root_id2":"0","catfilter":"0","getChildren":"0","liveSearch":"","width":"20","text":"","button":"","imagebutton":"","button_text":"","min_size":"75","max_size":"300","cloud_limit":"30","cloud_category":["0"],"cloud_category_recursive":"0","customCode":"","parsePhp":"0","K2Plugins":"0","JPlugins":"0","cache":"1","cache_time":"900"}', 0, '*'),
(90, 0, 'K2 Users', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_k2_users', 1, 1, '', 0, '*'),
(91, 0, 'K2 User', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_k2_user', 1, 1, '', 0, '*'),
(92, 0, 'K2 Quick Icons (admin)', '', '', 0, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_quickicons', 1, 1, '', 1, '*'),
(93, 0, 'K2 Stats (admin)', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_stats', 1, 1, '', 1, '*'),
(94, 0, 'Blog category', '', '', 1, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"k2-menu","startLevel":"1","endLevel":"1","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":" menu_sidebar","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(95, 0, 'Popuplar posts', '', '', 4, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_bt_contentshowcase', 1, 1, '{"moduleclass_sfx":"","content_title":"","content_title_link":"","layout":"default","module_width":"auto","item_height":"300","items_per_cols":"4","items_per_rows":"1","items_per_page":"5","show_arrow":"1","arrow_position":"right","activate_first":"1","item_min_width":"300","item_margin":"10","back_side_bg":"#bb1d48","bs_text_color":"#ffffff","next_prev":"1","next_back_position":"0","navigation_type":"bullet","navigation_position":"top","source":"k2_category","article_ids":"","k2_article_ids":"","btportfolio_article_ids":"","k2_category":["1"],"easyblog_article_ids":"","auto_category":"0","sub_categories":"0","exclude_categories":"","limit_items":"4","limit_items_for_each":"0","user_id":"0","show_featured":"1","ordering":"created-asc","content_plugin":"0","use_introimg":"1","use_caption":"0","use_linka":"0","show_title":"1","limit_title_by":"word","title_max_chars":"8","show_intro":"1","limit_description_by":"char","description_max_chars":"100","show_category_name":"0","show_category_name_as_link":"0","show_readmore":"0","show_date":"0","show_author":"0","show_image":"1","checkimg_fulltext":"0","check_image_exist":"0","image_align":"left","image_thumb":"1","thumbnail_width":"100","thumbnail_height":"100","thumbnail_small_width":"135","default_thumb":"1","touchscreen":"0","bn_effect":"slidenews","hovereffect":"1","modalbox":"0","slide_effect":"scroll","mouse_event":"hover","metro_effect":"slide","slide_direction":"horizontal","fpshow_effect":"slide","scroll_amount":"5","scroll_direction":"1","slide_item_per_time":"1","pause_hover":"1","duration":"600","captionSpeed":"500","auto_start":"1","interval":"5","easing":"easeInQuad","auto_strip_tags":"1","open_target":"_parent","loadJquery":"auto","cache":"1","cache_time":"900"}', 0, '*'),
(96, 0, 'BT Background SlideShow', '', '', 1, 'background_slideshow', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_backgroundslideshow', 1, 1, '{"source":"upload","jfolder_path":"images","flickr_userid":"","flickr_api":"","picasa_userid":"","yt_link":"","remote_image":"0","get_limit":"20","gallery":"W3siZmlsZSI6ImQxMDE4OWVmZmY2NDc0N2RmZDY4ZDJkMDY3MTAzYjAzLmpwZyIsInRpdGxlIjoiSXJpc2Jyb3MiLCJsaW5rIjoiIiwidGFyZ2V0IjoiIiwieW91aWQiOiIiLCJxdWFsaXR5IjoiZ2xvYmFsIiwiYXV0b3BsYXkiOiItMSIsInZvbHVtZSI6IiBHbG9iYWwiLCJkZXNjIjoiPGRpdiBjbGFzcz1cInNsX3NtYWxsX3RpdGxlXCI+QlQgQmlzdHJvPC9kaXY+XG48ZGl2IGNsYXNzPVwic2xfYmlnX3RpdGxlXCI+PHNwYW4+Q3JlYXRpdmUgcmVzdGF1cmFudCB3ZWJzaXRlPC9zcGFuPjwvZGl2PlxuPGRpdiBjbGFzcz1cInNsX2Rlc2NcIj5DbGFzcyBhcHRlbnQgdGFjaXRpIHNvY2lvc3F1IGFkLi4uPC9kaXY+In0seyJmaWxlIjoiNWNjYWViNzM5NTNjYTU3YmQ0OWQ2YTU3MWM2YWEzNWMuanBnIiwidGl0bGUiOiIiLCJsaW5rIjoiIiwidGFyZ2V0IjoiIiwieW91aWQiOiIiLCJxdWFsaXR5IjoiZ2xvYmFsIiwiYXV0b3BsYXkiOiItMSIsInZvbHVtZSI6IiBHbG9iYWwiLCJkZXNjIjoiPGRpdiBjbGFzcz1cInNsX3NtYWxsX3RpdGxlXCI+QlQgQmlzdHJvPC9kaXY+XG48ZGl2IGNsYXNzPVwic2xfYmlnX3RpdGxlXCI+PHNwYW4+Q3JlYXRpdmUgcmVzdGF1cmFudCB3ZWJzaXRlPC9zcGFuPjwvZGl2PlxuPGRpdiBjbGFzcz1cInNsX2Rlc2NcIj5DbGFzcyBhcHRlbnQgdGFjaXRpIHNvY2lvc3F1IGFkLi4uPC9kaXY+In0seyJmaWxlIjoiNDIzYjlhZDRjOTZlZWE2YmY0NTZkNGQ0YTgyNzc4M2UuanBnIiwidGl0bGUiOiIiLCJsaW5rIjoiIiwidGFyZ2V0IjoiIiwieW91aWQiOiIiLCJxdWFsaXR5IjoiZ2xvYmFsIiwiYXV0b3BsYXkiOiItMSIsInZvbHVtZSI6IiBHbG9iYWwiLCJkZXNjIjoiPGRpdiBjbGFzcz1cInNsX3NtYWxsX3RpdGxlXCI+QlQgQmlzdHJvPC9kaXY+XG48ZGl2IGNsYXNzPVwic2xfYmlnX3RpdGxlXCI+PHNwYW4+Q3JlYXRpdmUgcmVzdGF1cmFudCB3ZWJzaXRlPC9zcGFuPjwvZGl2PlxuPGRpdiBjbGFzcz1cInNsX2Rlc2NcIj5DbGFzcyBhcHRlbnQgdGFjaXRpIHNvY2lvc3F1IGFkLi4uPC9kaXY+In1d","slideshowSize":"wrapper","slideshowWidth":"","slideshowHeight":"","resizeImage":"stretch","hAlign":"c","vAlign":"m","slideshowSpeed":"8000","effecttype":"fade","slidedirection":"left","effectTime":"2000","caption":"3","display_order":"ordering","bgo-pattern":"","bgo-opacity":"0.5","nav-type":"nav-bullet","nex-back-button":"0","playpause-button":"1","thumb_number":"3","thumb_width":"80","thumb_height":"50","nav-align":"right","nav-position":"absolute","progress-bar":"0","autoplay":"0","stopAuto":"1","rememberlast":"0","shvideo":"1","controltype":"0","keepcontrolvideo":"2","videoquanlity":"highres","videoautoplay":"1","videovolume":"100","wrapper_element":".background_slideshow","title_font":"","title_color":"#ffffff","title_size":"18","desc_font":"","desc_color":"#ffffff","desc_size":"12","nav_bg":"#222222","progress_bg":"#A2080C","stylesheet":"","crop_image":"0","jpeg_compression":"100","crop_width":"1600","crop_height":"1000","load_jquery":"1","hide_content":"0","hide_content_text":"Show Content|Hide Content","pauseOnHover":"0"}', 0, '*'),
(97, 0, 'Popuplar posts', '', '', 5, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_contentshowcase', 1, 1, '{"moduleclass_sfx":" sc_sidebar","content_title":"","content_title_link":"","layout":"default","module_width":"auto","item_height":"120","items_per_cols":"4","items_per_rows":"1","items_per_page":"5","show_arrow":"1","arrow_position":"right","activate_first":"1","item_min_width":"300","item_margin":"10","back_side_bg":"#bb1d48","bs_text_color":"#ffffff","next_prev":"1","next_back_position":"0","navigation_type":"bullet","navigation_position":"0","show_category_image":"1","extrafield_price_id":"","price_unit":"","source":"k2_category","article_ids":"","k2_article_ids":"","btportfolio_article_ids":"","k2_category":["1"],"easyblog_article_ids":"","auto_category":"0","sub_categories":"0","exclude_categories":"","limit_items":"5","limit_items_for_each":"0","user_id":"0","show_featured":"1","ordering":"created-asc","content_plugin":"0","use_introimg":"1","use_caption":"0","use_linka":"0","show_title":"1","limit_title_by":"word","title_max_chars":"4","show_intro":"1","limit_description_by":"char","description_max_chars":"70","show_category_name":"0","show_category_name_as_link":"0","show_readmore":"0","show_date":"0","show_author":"0","show_image":"1","checkimg_fulltext":"0","check_image_exist":"0","image_align":"left","image_align2":"left","image_thumb":"1","thumbnail_width":"100","thumbnail_height":"100","image_quality":"80","thumbnail_small_width":"135","default_thumb":"1","touchscreen":"0","bn_effect":"slidenews","hovereffect":"1","modalbox":"0","slide_effect":"scroll","mouse_event":"hover","metro_effect":"slide","slide_direction":"horizontal","fpshow_effect":"slide","scroll_amount":"5","scroll_direction":"1","slide_item_per_time":"1","pause_hover":"1","duration":"600","captionSpeed":"500","auto_start":"0","interval":"5","easing":"easeInQuad","auto_strip_tags":"1","open_target":"_parent","loadJquery":"auto","cache":"1","cache_time":"900"}', 0, '*'),
(98, 0, 'Footer', '', '<ul>\r\n<li>Copyright © <a href="#">BT Bistro</a></li>\r\n<li>13 Hanway Square, London</li>\r\n<li>Tel: 0123456789</li>\r\n<li>Designed by <a href="#">BowThemes</a></li>\r\n</ul>', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(99, 0, 'Social footer icon', '', '<a href="#"><i class="fa fa-facebook"></i></a>\r\n<a href="#"><i class="fa fa-twitter"></i></a>\r\n<a href="#"><i class="fa fa-youtube"></i></a>\r\n<a href="#"><i class="fa fa-xing"></i></a>', 1, 'social_footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(100, 0, 'About BT Bistro Restaurant', '', '<div>[bt_tabs style="bottom" tabs="4" fitwidth="yes" active="1" class="tabSlider"][bt_tab title="1965"]Donec pharetra interdum diam. Vivamus nec sodales lectus, id sodales leo. Vivamus a arcu consequat, fringilla odio quis, dapibus metus. Donec at egestas augue. In aliquam vestibulum lacus, id accumsan neque malesuada vel. Viverra eu turpis. Integer vitae augue egestas, semper lectus non, cursus diam. Sed vehicula mattis iaculis. [/bt_tab][bt_tab title="1976"]Donec pharetra interdum diam. Vivamus nec sodales lectus, id sodales leo. Vivamus a arcu consequat, fringilla odio quis, dapibus metus. Donec at egestas augue. Curabitur purus neque, cursus eget imperdiet et, viverra eu turpis. Integer vitae augue egestas, semper lectus non, cursus diam. Sed vehicula mattis iaculis. [/bt_tab][bt_tab title="1980"]Donec pharetra interdum diam. Vivamus nec sodales lectus, id sodales leo. Vivamus a arcu consequat, fringilla odio quis, dapibus metus. Donec at egestas augue. In aliquam vestibulum lacus, id accumsan neque malesuada vel. Curabitur purus neque, cursus eget imperdiet et, viverra eu turpis. Integer vitae augue egestas, semper lectus non, cursus diam. Sed vehicula mattis iaculis. [/bt_tab][bt_tab title="1998"]Donec pharetra interdum diam. Vivamus nec sodales lectus, id sodales leo. Vivamus a arcu consequat, fringilla odio quis, dapibus metus. In aliquam vestibulum lacus, id accumsan neque malesuada vel. Curabitur purus neque, cursus eget imperdiet et, viverra eu turpis. Integer vitae augue egestas, semper lectus non, cursus diam. Sed vehicula mattis iaculis. [/bt_tab][/bt_tabs]</div>', 1, 'tabSlide', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(101, 0, 'BT Advanced Parallax Background', '', '', 1, 'bt_gallery', 124, '2015-03-24 04:45:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_apb', 1, 1, '{"module_width":"","module_height":"540","background_type":"image","parallax_type":"static","background_image":"images\\/bt_parallax.png","background_video":"","background_textured":"","textured_color":"","textured_opacity":"0.7","speed_factor":"0.5","content_width":"","heading_text":"Get Involved","sub_text":"We start to connect cooks from all over the world and grow into a daily cooking community. You''re sure to find the perfect dish from our over 15,000 recipes, be inspired from 150,000+ photos and millions of reviews","button_text":"Gallery","content_effect":"fade","content_custom_effect":"","gallery_type":"image","source":"upload","video_source":"embed","jfolder_path":"images","flickr_userid":"","flickr_api":"","picasa_userid":"","embed_video":"","html5_video":"","remote_image":"0","get_limit":"20","gallery":"W10=","thumbnail_width":"200","thumbnail_height":"200","number_rows":"2","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(102, 0, 'Testimonial', '', '', 1, 'bottom_mainbody', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_contentshowcase', 1, 1, '{"moduleclass_sfx":" slide_testimonial","content_title":"","content_title_link":"","layout":"default","module_width":"auto","item_height":"300","items_per_cols":"1","items_per_rows":"1","items_per_page":"5","show_arrow":"1","arrow_position":"right","activate_first":"1","item_min_width":"900","item_margin":"10","back_side_bg":"#bb1d48","bs_text_color":"#ffffff","next_prev":"1","next_back_position":"0","navigation_type":"bullet","navigation_position":"bottom","source":"category","article_ids":"","k2_article_ids":"","btportfolio_article_ids":"","category":["79"],"easyblog_article_ids":"","auto_category":"0","sub_categories":"0","exclude_categories":"","limit_items":"12","limit_items_for_each":"0","user_id":"0","show_featured":"1","ordering":"created-asc","content_plugin":"0","use_introimg":"1","use_caption":"0","use_linka":"0","show_title":"0","limit_title_by":"word","title_max_chars":"8","show_intro":"1","limit_description_by":"char","description_max_chars":"600","show_category_name":"0","show_category_name_as_link":"0","show_readmore":"0","show_date":"0","show_author":"0","show_image":"0","checkimg_fulltext":"0","check_image_exist":"0","image_align":"center","image_thumb":"0","thumbnail_width":"180","thumbnail_height":"120","thumbnail_small_width":"135","default_thumb":"1","touchscreen":"0","bn_effect":"slidenews","hovereffect":"1","modalbox":"0","slide_effect":"scroll","mouse_event":"hover","metro_effect":"slide","slide_direction":"horizontal","fpshow_effect":"slide","scroll_amount":"5","scroll_direction":"1","slide_item_per_time":"1","pause_hover":"1","duration":"600","captionSpeed":"500","auto_start":"1","interval":"5","easing":"easeInQuad","auto_strip_tags":"1","allow_tags":["img","span","div"],"open_target":"_parent","loadJquery":"auto","cache":"1","cache_time":"900"}', 0, '*'),
(103, 0, 'Discover our amazing menu', '', '', 1, 'menus_showcase', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_contentshowcase', 1, 1, '{"moduleclass_sfx":" art_text colorItem","content_title":"","content_title_link":"","layout":"bt_bistro","module_width":"640","item_height":"300","items_per_cols":"1","items_per_rows":"3","items_per_page":"5","show_arrow":"1","arrow_position":"right","activate_first":"1","item_min_width":"300","item_margin":"10","back_side_bg":"#bb1d48","bs_text_color":"#ffffff","next_prev":"1","next_back_position":"flanks","navigation_type":"bullet","navigation_position":"top","show_extrafields":["8","9","10","11"],"show_category_image":"1","extrafield_price_id":"8","price_unit":"","source":"k2_category","article_ids":"","k2_article_ids":"","btportfolio_article_ids":"","k2_category":["10"],"easyblog_article_ids":"","auto_category":"0","sub_categories":"0","exclude_categories":"","limit_items":"12","limit_items_for_each":"0","user_id":"0","show_featured":"1","ordering":"created-asc","content_plugin":"0","use_introimg":"1","use_caption":"0","use_linka":"0","show_title":"1","limit_title_by":"word","title_max_chars":"8","show_intro":"1","limit_description_by":"char","description_max_chars":"500","show_category_name":"0","show_category_name_as_link":"0","show_readmore":"0","show_date":"0","show_author":"0","show_image":"1","checkimg_fulltext":"0","check_image_exist":"0","image_align":"center","image_align2":"left","image_thumb":"1","thumbnail_width":"295","thumbnail_height":"475","image_quality":"80","thumbnail_small_width":"135","default_thumb":"1","touchscreen":"0","bn_effect":"slidenews","hovereffect":"1","modalbox":"0","slide_effect":"scroll","mouse_event":"hover","metro_effect":"slide","slide_direction":"horizontal","fpshow_effect":"slide","scroll_amount":"5","scroll_direction":"1","slide_item_per_time":"1","pause_hover":"1","duration":"600","captionSpeed":"500","auto_start":"1","interval":"5","easing":"easeInQuad","auto_strip_tags":"1","allow_tags":["p"],"open_target":"_parent","loadJquery":"auto","cache":"1","cache_time":"900"}', 0, '*'),
(104, 0, 'Breakfast menus', '', '', 1, 'menus_showcase', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_contentshowcase', 1, 0, '{"moduleclass_sfx":" narow_space img_right","content_title":"","content_title_link":"","layout":"bt_bistro","module_width":"640","item_height":"300","items_per_cols":"1","items_per_rows":"3","items_per_page":"5","show_arrow":"1","arrow_position":"right","activate_first":"1","item_min_width":"300","item_margin":"10","back_side_bg":"#bb1d48","bs_text_color":"#ffffff","next_prev":"1","next_back_position":"flanks","navigation_type":"bullet","navigation_position":"top","show_extrafields":["13","15"],"show_category_image":"1","extrafield_price_id":"15","price_unit":"","source":"k2_category","article_ids":"","k2_article_ids":"","btportfolio_article_ids":"","k2_category":["11"],"easyblog_article_ids":"","auto_category":"0","sub_categories":"0","exclude_categories":"","limit_items":"2","limit_items_for_each":"0","user_id":"0","show_featured":"1","ordering":"created-asc","content_plugin":"0","use_introimg":"1","use_caption":"0","use_linka":"0","show_title":"1","limit_title_by":"word","title_max_chars":"8","show_intro":"1","limit_description_by":"char","description_max_chars":"500","show_category_name":"0","show_category_name_as_link":"0","show_readmore":"0","show_date":"0","show_author":"0","show_image":"1","checkimg_fulltext":"0","check_image_exist":"0","image_align":"left","image_align2":"left","image_thumb":"1","thumbnail_width":"295","thumbnail_height":"295","image_quality":"80","thumbnail_small_width":"135","default_thumb":"1","touchscreen":"0","bn_effect":"slidenews","hovereffect":"1","modalbox":"0","slide_effect":"scroll","mouse_event":"hover","metro_effect":"slide","slide_direction":"horizontal","fpshow_effect":"slide","scroll_amount":"5","scroll_direction":"1","slide_item_per_time":"1","pause_hover":"1","duration":"600","captionSpeed":"500","auto_start":"1","interval":"5","easing":"easeInQuad","auto_strip_tags":"1","allow_tags":["p"],"open_target":"_parent","loadJquery":"auto","cache":"1","cache_time":"900"}', 0, '*'),
(105, 0, 'Drinks menus', '', '', 1, 'menus_showcase', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_contentshowcase', 1, 0, '{"moduleclass_sfx":" narow_space","content_title":"","content_title_link":"","layout":"bt_bistro","module_width":"640","item_height":"300","items_per_cols":"1","items_per_rows":"3","items_per_page":"5","show_arrow":"1","arrow_position":"right","activate_first":"1","item_min_width":"300","item_margin":"10","back_side_bg":"#bb1d48","bs_text_color":"#ffffff","next_prev":"1","next_back_position":"flanks","navigation_type":"bullet","navigation_position":"top","show_extrafields":["14","16"],"show_category_image":"1","extrafield_price_id":"16","price_unit":"","source":"k2_category","article_ids":"","k2_article_ids":"","btportfolio_article_ids":"","k2_category":["12"],"easyblog_article_ids":"","auto_category":"0","sub_categories":"0","exclude_categories":"","limit_items":"12","limit_items_for_each":"0","user_id":"0","show_featured":"1","ordering":"created-asc","content_plugin":"0","use_introimg":"1","use_caption":"0","use_linka":"0","show_title":"1","limit_title_by":"word","title_max_chars":"8","show_intro":"1","limit_description_by":"char","description_max_chars":"500","show_category_name":"0","show_category_name_as_link":"0","show_readmore":"0","show_date":"0","show_author":"0","show_image":"1","checkimg_fulltext":"0","check_image_exist":"0","image_align":"left","image_align2":"left","image_thumb":"1","thumbnail_width":"295","thumbnail_height":"295","image_quality":"80","thumbnail_small_width":"135","default_thumb":"1","touchscreen":"0","bn_effect":"slidenews","hovereffect":"1","modalbox":"0","slide_effect":"scroll","mouse_event":"hover","metro_effect":"slide","slide_direction":"horizontal","fpshow_effect":"slide","scroll_amount":"5","scroll_direction":"1","slide_item_per_time":"1","pause_hover":"1","duration":"600","captionSpeed":"500","auto_start":"1","interval":"5","easing":"easeInQuad","auto_strip_tags":"1","allow_tags":["p"],"open_target":"_parent","loadJquery":"auto","cache":"1","cache_time":"900"}', 0, '*'),
(106, 0, 'About us - skill', '', '<div class="aboutChef">\r\n<div class="row">\r\n<div class="col-md-6 col-sm-6 col-xs-12">\r\n<div class="aboutChef_title"><span>super chefs</span>Sarah Wilson</div>\r\n<div class="aboutChef_intro">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s tially unchanged.</div>\r\n[bt_skillbars style="default" radius="10" font_size="14" color="#919191" achievement_color="#2ca7a6" background_color="#f4f4f4" show_percent="callout"][bt_skillbar title="Starters foods" achievement_percent="90"][bt_skillbar title="Main foods" achievement_percent="90"][bt_skillbar title="Cup cakes" achievement_percent="90"][/bt_skillbars]</div>\r\n<div class="col-md-6 col-sm-6 col-xs-12">\r\n<div class="aboutChef_avt"><img src="images/chef.png" border="0" alt="" /></div>\r\n</div>\r\n</div>\r\n</div>', 1, 'aboutUs', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(107, 0, 'AcyMailing Module', '', '', 1, 'position-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_acymailing', 1, 0, '{"effect":"normal","lists":"None","hiddenlists":"All","displaymode":"vertical","listschecked":"All","checkmode":"0","dropdown":"0","overlay":"0","link":"1","listposition":"before","customfields":"email","nametext":"","emailtext":"","fieldsize":"100%","displayfields":"0","introtext":"<div class=\\"topText\\"><span>email<\\/span> newsletter<\\/div>\\r\\nEnter your email address","finaltext":"","showsubscribe":"1","subscribetext":" ","subscribetextreg":"","showunsubscribe":"0","unsubscribetext":"","redirectmode":"0","redirectlink":"","redirectlinkunsub":"","showterms":"0","showtermspopup":"1","termscontent":"0","mootoolsintro":"","mootoolsbutton":"","boxwidth":"250","boxheight":"200","moduleclass_sfx":"","textalign":"none","loggedin":"1","cache":"0","includejs":"header","itemid":""}', 0, '*'),
(108, 0, 'Lastest news', '', '', 1, 'position-6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_contentshowcase', 1, 1, '{"moduleclass_sfx":" lastest_news","content_title":"","content_title_link":"","layout":"default","module_width":"auto","item_height":"150","items_per_cols":"3","items_per_rows":"1","items_per_page":"5","show_arrow":"1","arrow_position":"right","activate_first":"1","item_min_width":"300","item_margin":"10","back_side_bg":"#bb1d48","bs_text_color":"#ffffff","next_prev":"1","next_back_position":"0","navigation_type":"bullet","navigation_position":"top","show_category_image":"1","extrafield_price_id":"","price_unit":"","source":"k2_category","article_ids":"","k2_article_ids":"","btportfolio_article_ids":"","k2_category":["1"],"easyblog_article_ids":"","auto_category":"0","sub_categories":"0","exclude_categories":"","limit_items":"12","limit_items_for_each":"0","user_id":"0","show_featured":"1","ordering":"created-asc","content_plugin":"0","use_introimg":"1","use_caption":"0","use_linka":"0","show_title":"1","limit_title_by":"word","title_max_chars":"4","show_intro":"1","limit_description_by":"char","description_max_chars":"65","show_category_name":"0","show_category_name_as_link":"0","show_readmore":"1","show_date":"0","show_author":"0","show_image":"1","checkimg_fulltext":"0","check_image_exist":"0","image_align":"left","image_align2":"left","image_thumb":"1","thumbnail_width":"104","thumbnail_height":"104","image_quality":"80","thumbnail_small_width":"135","default_thumb":"1","touchscreen":"0","bn_effect":"slidenews","hovereffect":"1","modalbox":"0","slide_effect":"scroll","mouse_event":"hover","metro_effect":"slide","slide_direction":"horizontal","fpshow_effect":"slide","scroll_amount":"5","scroll_direction":"1","slide_item_per_time":"1","pause_hover":"1","duration":"600","captionSpeed":"500","auto_start":"0","interval":"5","easing":"easeInQuad","auto_strip_tags":"1","open_target":"_parent","loadJquery":"auto","cache":"1","cache_time":"900"}', 0, '*'),
(109, 0, 'Where we are?', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_googlemaps', 1, 1, '{"mapType":"roadmap","mapCenterType":"address","mapCenterAddress":"New York, United States","mapCenterCoordinate":"40.7143528, -74.0059731","width":"auto","height":"190","zoom":"13","zoomControl":"true","panControl":"true","mapTypeControl":"true","scaleControl":"true","overviewMapControl":"true","streetViewControl":"true","draggable":"true","disableDoubleClickZoom":"false","scrollwheel":"true","markes":"W10=","weather":"0","temperatureUnit":"f","cloud":"1","enable-style":"0","style-title":"BT Map","createNewOrApplyDefaultStyle":"createNew","styles":"W10=","enable-custom-infobox":"0","boxcss":"background :#ffffff,\\r\\nopacity : 0.85,\\r\\nwidth : 280px,\\r\\nheight :100px,\\r\\nborder : 1px solid grey,\\r\\nborderRadius:3px,\\r\\npadding : 10px,\\r\\nboxShadow:30px 10px 10px 1px grey","pixelOffset":"-150,-155","closeBoxMargin":"-9px","closeBoxURL":"","moduleclass_sfx":" map_aboutus","cache":"1","cache_time":"900"}', 0, '*'),
(110, 0, 'Where we are? - Text', '', '<p style="font-size: 22px;">Sed id diam at urna bibendum ultrices. Nunc hendrerit pellentesque faucibus. Phasellus a faucibus dolor. Cras et accumsan tellus. Nunc augue est, mollis ut lacus eget, dictum ullamcorper purus.</p>', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(111, 0, 'Make a reservation', '', '', 1, 'bt_contact', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_btquickcontact', 1, 0, '{"admin_email":"","sender":"config","subject":"","captcha":"","form_type":"module","show_feedback":"1","width":"auto","height":"auto","layout":"default","send_copy":"0","thank_message":"Thanks for your message","redirect_url":"","html_element_id":"","progress_bar":"0","pre_text":"","post_text":"","fields":"W3sidHlwZSI6ImRhdGUiLCJ0aXRsZSI6IldoZW4gd291bGQgeW91IGxpa2UgdG8gYm9vaz8iLCJhbGlhcyI6IndoZW4td291bGQteW91LWxpa2UtdG8tYm9vayIsImRlZmF1bHRWYWx1ZSI6IiIsInJlcXVpcmVkIjpmYWxzZX0seyJ0eXBlIjoidGV4dCIsInRpdGxlIjoiUGFydHkgc2l6ZSIsImFsaWFzIjoicGFydHktc2l6ZSIsImRlZmF1bHRWYWx1ZSI6IiIsInJlcXVpcmVkIjpmYWxzZSwic2l6ZSI6IiJ9LHsidHlwZSI6InRleHQiLCJ0aXRsZSI6IlBhcnR5IHRpbWUiLCJhbGlhcyI6InBhcnR5LXRpbWUiLCJkZWZhdWx0VmFsdWUiOiIiLCJyZXF1aXJlZCI6ZmFsc2UsInNpemUiOiIifSx7InR5cGUiOiJuYW1lIiwidGl0bGUiOiJZb3VyIG5hbWUiLCJhbGlhcyI6InlvdXItbmFtZSIsImRlZmF1bHRWYWx1ZSI6IiIsInJlcXVpcmVkIjp0cnVlLCJzaXplIjoiIn0seyJ0eXBlIjoiZW1haWwiLCJ0aXRsZSI6IllvdXIgZW1haWwiLCJhbGlhcyI6InlvdXItZW1haWwiLCJkZWZhdWx0VmFsdWUiOiIiLCJyZXF1aXJlZCI6ZmFsc2UsInNpemUiOiIifV0=","module_class_suffix":" booking","cache":"0"}', 0, '*'),
(112, 0, 'Map contact', '', '', 1, 'bt_map_contact', 124, '2015-03-11 08:39:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_googlemaps', 1, 1, '{"mapType":"roadmap","mapCenterType":"address","mapCenterAddress":"New York, United States","mapCenterCoordinate":"40.7143528, -74.0059731","width":"auto","height":"450","zoom":"13","zoomControl":"true","panControl":"true","mapTypeControl":"true","scaleControl":"true","overviewMapControl":"true","streetViewControl":"true","draggable":"true","disableDoubleClickZoom":"false","scrollwheel":"true","markes":"W10=","weather":"0","temperatureUnit":"f","cloud":"1","enable-style":"0","style-title":"BT Map","createNewOrApplyDefaultStyle":"createNew","styles":"W10=","enable-custom-infobox":"0","boxcss":"background :#ffffff,\\r\\nopacity : 0.85,\\r\\nwidth : 280px,\\r\\nheight :100px,\\r\\nborder : 1px solid grey,\\r\\nborderRadius:3px,\\r\\npadding : 10px,\\r\\nboxShadow:30px 10px 10px 1px grey","pixelOffset":"-150,-155","closeBoxMargin":"-9px","closeBoxURL":"","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(113, 0, 'Main Menu 2', '', '', 1, 'mainmenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"right-menu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(114, 0, 'Sticky Menu Left', '', '', 1, 'stickyMenuLeft', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(115, 0, 'Sticky Menu Right', '', '', 1, 'stickyMenuRight', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"right-menu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `#__modules_menu`
--

CREATE TABLE IF NOT EXISTS `#__modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__modules_menu`
--

INSERT INTO `#__modules_menu` (`moduleid`, `menuid`) VALUES
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
(16, 238),
(16, 445),
(16, 446),
(16, 455),
(16, 479),
(16, 480),
(16, 482),
(16, 483),
(16, 484),
(16, 485),
(16, 486),
(16, 487),
(16, 488),
(16, 499),
(16, 500),
(16, 501),
(16, 502),
(16, 503),
(16, 504),
(19, 0),
(20, 0),
(22, 231),
(22, 234),
(22, 238),
(22, 242),
(22, 243),
(22, 244),
(22, 296),
(22, 399),
(22, 400),
(23, -463),
(23, -462),
(23, -433),
(23, -432),
(23, -431),
(23, -430),
(23, -429),
(23, -427),
(23, -400),
(23, -399),
(23, -296),
(23, -244),
(23, -243),
(23, -242),
(23, -238),
(23, -234),
(32, 309),
(57, 238),
(57, 427),
(57, 429),
(57, 430),
(57, 431),
(57, 432),
(57, 433),
(57, 462),
(57, 463),
(71, 285),
(71, 316),
(79, 0),
(86, 0),
(89, 238),
(89, 445),
(89, 446),
(89, 455),
(89, 479),
(89, 480),
(89, 482),
(89, 483),
(89, 484),
(89, 485),
(89, 486),
(89, 487),
(89, 488),
(89, 499),
(89, 500),
(89, 501),
(89, 502),
(89, 503),
(89, 504),
(92, 0),
(93, 0),
(94, 238),
(94, 445),
(94, 446),
(94, 455),
(94, 479),
(94, 480),
(94, 482),
(94, 483),
(94, 484),
(94, 485),
(94, 486),
(94, 487),
(94, 488),
(94, 499),
(94, 500),
(94, 501),
(94, 502),
(94, 503),
(94, 504),
(95, 238),
(95, 445),
(95, 446),
(95, 448),
(95, 479),
(95, 480),
(95, 482),
(95, 483),
(95, 484),
(95, 485),
(96, 435),
(97, 238),
(97, 445),
(97, 446),
(97, 455),
(97, 479),
(97, 480),
(97, 482),
(97, 483),
(97, 484),
(97, 485),
(97, 486),
(97, 487),
(97, 488),
(97, 499),
(97, 500),
(97, 501),
(97, 502),
(97, 503),
(97, 504),
(98, 0),
(99, 0),
(100, 435),
(101, 435),
(102, 435),
(103, 435),
(104, 435),
(105, 435),
(106, 294),
(107, 294),
(107, 448),
(108, 294),
(108, 448),
(109, 294),
(109, 448),
(110, 294),
(110, 448),
(111, 448),
(112, 481),
(113, 0),
(114, 0),
(115, 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__newsfeeds`
--

CREATE TABLE IF NOT EXISTS `#__newsfeeds` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `#__newsfeeds`
--

INSERT INTO `#__newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`, `access`, `language`, `params`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `xreference`, `publish_up`, `publish_down`, `description`, `version`, `hits`, `images`) VALUES
(17, 1, 'Joomla! Announcements', 'joomla-announcements', 'http://www.joomla.org/announcements.feed?type=rss', 1, 5, 3600, 0, '0000-00-00 00:00:00', 1, 1, 1, 'en-GB', '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","newsfeed_layout":"","feed_display_order":""}', '2011-01-01 00:00:01', 124, '', '2011-12-27 12:25:05', 42, '', '', '{"robots":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 1, 0, ''),
(17, 2, 'New Joomla! Extensions', 'new-joomla-extensions', 'http://feeds.joomla.org/JoomlaExtensions', 1, 5, 3600, 0, '0000-00-00 00:00:00', 4, 1, 1, 'en-GB', '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","newsfeed_layout":"","feed_display_order":""}', '2011-01-01 00:00:01', 124, '', '2011-12-27 12:25:36', 42, '', '', '{"robots":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 1, 0, ''),
(17, 3, 'Joomla! Security News', 'joomla-security-news', 'http://feeds.joomla.org/JoomlaSecurityNews', 1, 5, 3600, 0, '0000-00-00 00:00:00', 2, 1, 1, 'en-GB', '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","newsfeed_layout":"","feed_display_order":""}', '2011-01-01 00:00:01', 124, '', '2011-12-27 12:24:55', 42, '', '', '{"robots":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 1, 0, ''),
(17, 4, 'Joomla! Connect', 'joomla-connect', 'http://feeds.joomla.org/JoomlaConnect', 1, 5, 3600, 0, '0000-00-00 00:00:00', 3, 1, 1, 'en-GB', '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","newsfeed_layout":"","feed_display_order":""}', '2011-01-01 00:00:01', 124, '', '2011-12-27 12:25:10', 42, '', '', '{"robots":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `#__overrider`
--

CREATE TABLE IF NOT EXISTS `#__overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `#__postinstall_messages` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `#__postinstall_messages`
--

INSERT INTO `#__postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_MSG_EACCELERATOR_TITLE', 'COM_CPANEL_MSG_EACCELERATOR_BODY', 'COM_CPANEL_MSG_EACCELERATOR_BUTTON', 'com_cpanel', 1, 'action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_condition', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_PHPVERSION_TITLE', 'COM_CPANEL_MSG_PHPVERSION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/phpversion.php', 'admin_postinstall_phpversion_condition', '3.2.2', 1),
(4, 700, 'COM_CPANEL_MSG_HTACCESS_TITLE', 'COM_CPANEL_MSG_HTACCESS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/htaccess.php', 'admin_postinstall_htaccess_condition', '3.4.0', 1),
(5, 700, 'COM_CPANEL_MSG_ROBOTS_TITLE', 'COM_CPANEL_MSG_ROBOTS_BODY', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.3.0', 1),
(6, 700, 'COM_CPANEL_MSG_LANGUAGEACCESS340_TITLE', 'COM_CPANEL_MSG_LANGUAGEACCESS340_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/languageaccess340.php', 'admin_postinstall_languageaccess340_condition', '3.4.1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__presets_bt_shortcode`
--

CREATE TABLE IF NOT EXISTS `#__presets_bt_shortcode` (
  `shortcode` varchar(255) NOT NULL,
  `presets` text,
  PRIMARY KEY (`shortcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `#__redirect_links`
--

CREATE TABLE IF NOT EXISTS `#__redirect_links` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `#__redirect_links`
--

INSERT INTO `#__redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `hits`, `published`, `created_date`, `modified_date`, `header`) VALUES
(1, 'http://localhost/bt_bistro/index.php?option=com_content&view=article&id=42&Itemid=294', '', 'http://localhost/bt_bistro/', '', 1, 0, '2015-02-10 02:37:08', '0000-00-00 00:00:00', 301),
(2, 'http://localhost/bt_bistro/index.php?option=com_user&view=login', '', '', '', 1, 0, '2015-02-11 07:20:01', '0000-00-00 00:00:00', 301),
(3, 'http://10.0.0.1/bt_bistro30/index.php?option=com_content&view=category&layout=blog&id=78&Itemid=486', '', 'http://10.0.0.1/bt_bistro30/index.php?option=com_content&view=category&layout=blog&id=78&Itemid=486', '', 1, 0, '2015-03-24 08:31:44', '0000-00-00 00:00:00', 301);

-- --------------------------------------------------------

--
-- Table structure for table `#__schemas`
--

CREATE TABLE IF NOT EXISTS `#__schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__schemas`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__session`
--

CREATE TABLE IF NOT EXISTS `#__session` (
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
-- Dumping data for table `#__session`
--

INSERT INTO `#__session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('594fdda0132517f55e5ca1e583435dea', 1, 0, '1427247216', NULL, 124, 'bowthemes'),
('c96a6060026e3e66637390790c79b1d5', 0, 1, '1427249575', NULL, 0, ''),
('d69c50870c61976e85f3d5153a1311aa', 0, 1, '1427250387', NULL, 0, ''),
('euqb5nt21tumk5lqcr9fi8fai1', 1, 0, '1427252756', NULL, 124, 'bowthemes');

-- --------------------------------------------------------

--
-- Table structure for table `#__tags`
--

CREATE TABLE IF NOT EXISTS `#__tags` (
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
-- Dumping data for table `#__tags`
--

INSERT INTO `#__tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `#__template_styles`
--

CREATE TABLE IF NOT EXISTS `#__template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=120 ;

--
-- Dumping data for table `#__template_styles`
--

INSERT INTO `#__template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(115, 'bt_bistro', 0, '1', 'bt_bistro - Default', '{"t3_template":"1","devmode":"1","themermode":"1","legacy_css":"0","responsive":"1","non_responsive_width":"970px","build_rtl":"0","t3-assets":"t3-assets","t3-rmvlogo":"1","minify":"0","minify_js":"0","minify_js_tool":"jsmin","minify_exclude":"","link_titles":"","theme":"","logotype":"image","sitename":"","slogan":"","logoimage":"","enable_logoimage_sm":"0","logoimage_sm":"","mainlayout":"default","sublayout":"default","mm_type":"mainmenu","navigation_trigger":"hover","navigation_type":"megamenu","navigation_animation":"","navigation_animation_duration":"400","mm_config":"{\\"mainmenu\\":{\\"item-238\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":445,\\"width\\":12}]]}},\\"item-455\\":{\\"sub\\":{\\"rows\\":[]}},\\"item-486\\":{\\"sub\\":{\\"rows\\":[]}},\\"item-487\\":{\\"sub\\":{\\"rows\\":[]}},\\"item-488\\":{\\"sub\\":{\\"rows\\":[]}}}}","navigation_collapse_enable":"1","addon_offcanvas_enable":"1","addon_offcanvas_effect":"off-canvas-effect-4","snippet_open_head":"","snippet_close_head":"","snippet_open_body":"","snippet_close_body":"","snippet_debug":"0"}'),
(117, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(118, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(119, 'beez3', 0, '0', 'beez3 - Default', '{"wrapperSmall":53,"wrapperLarge":72,"logo":"","sitetitle":"","sitedescription":"","navposition":"center","bootstrap":"","templatecolor":"nature","headerImage":"","backgroundcolor":"#eee"}');

-- --------------------------------------------------------

--
-- Table structure for table `#__ucm_base`
--

CREATE TABLE IF NOT EXISTS `#__ucm_base` (
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
-- Table structure for table `#__ucm_content`
--

CREATE TABLE IF NOT EXISTS `#__ucm_content` (
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
-- Table structure for table `#__ucm_history`
--

CREATE TABLE IF NOT EXISTS `#__ucm_history` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__updates`
--

CREATE TABLE IF NOT EXISTS `#__updates` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=308 ;

--
-- Dumping data for table `#__updates`
--

INSERT INTO `#__updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 3, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/ms-MY_details.xml', '', ''),
(2, 3, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/ro-RO_details.xml', '', ''),
(3, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', '', ''),
(4, 3, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.4.0.1', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', '', ''),
(5, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', '', ''),
(6, 3, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'http://update.joomla.org/language/details3/gl-ES_details.xml', '', ''),
(7, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(8, 3, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(9, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(10, 3, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(11, 3, 0, 'EnglishAU', '', 'pkg_en-AU', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(12, 3, 0, 'EnglishUS', '', 'pkg_en-US', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(13, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(14, 3, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.2.0.2', '', 'http://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(15, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(16, 3, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(17, 3, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(18, 3, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(19, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(20, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(21, 3, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(22, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(23, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(24, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.3.4.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(25, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(26, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(27, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(28, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(29, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(30, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.4.0.1', '', 'http://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(31, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.4.0.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(32, 3, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(33, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.3.6.2', '', 'http://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(34, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(35, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.4.1.3', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(36, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.0.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(37, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.4.0.2', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(38, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(39, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(40, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.3.3.15', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(41, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(42, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(43, 3, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(44, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(45, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(46, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.4.0.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(47, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.4.0.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(48, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(49, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(50, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.3.0.2', '', 'http://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(51, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(52, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(53, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(54, 3, 0, 'EnglishCA', '', 'pkg_en-CA', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(55, 3, 0, 'FrenchCA', '', 'pkg_fr-CA', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(56, 3, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(57, 3, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(58, 5, 0, 'JA Amazon S3 for joomla 16', '', 'com_com_jaamazons3', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/com_com_jaamazons3.xml', '', ''),
(59, 5, 0, 'JA Extenstion Manager Component j16', '', 'com_com_jaextmanager', 'file', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/com_com_jaextmanager.xml', '', ''),
(60, 5, 0, 'JA Amazon S3 for joomla 2.5 & 3.x', '', 'com_jaamazons3', 'component', '', 1, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/com_jaamazons3.xml', '', ''),
(61, 5, 0, 'JA Comment Package for Joomla 2.5 & 3.3', '', 'com_jacomment', 'component', '', 1, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/com_jacomment.xml', '', ''),
(62, 5, 0, 'JA Extenstion Manager Component for J25 & J3', '', 'com_jaextmanager', 'component', '', 1, '2.6.0', '', 'http://update.joomlart.com/service/tracking/j16/com_jaextmanager.xml', '', ''),
(63, 5, 0, 'JA Google Storage Package for J2.5 & J3.0', '', 'com_jagooglestorage', 'component', '', 1, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/com_jagooglestorage.xml', '', ''),
(64, 5, 0, 'JA Job Board Package For J25', '', 'com_jajobboard', 'component', '', 1, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/com_jajobboard.xml', '', ''),
(65, 5, 0, 'JA K2 Filter Package for J25 & J3.3', '', 'com_jak2filter', 'component', '', 1, '1.1.8', '', 'http://update.joomlart.com/service/tracking/j16/com_jak2filter.xml', '', ''),
(66, 5, 0, 'JA K2 Filter Package for J25 & J30', '', 'com_jak2fiter', 'component', '', 1, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/com_jak2fiter.xml', '', ''),
(67, 5, 0, 'JA Showcase component for Joomla 1.7', '', 'com_jashowcase', 'component', '', 1, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/com_jashowcase.xml', '', ''),
(68, 5, 0, 'JA Voice Package for Joomla 2.5 & 3.x', '', 'com_javoice', 'component', '', 1, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/com_javoice.xml', '', ''),
(69, 5, 0, 'JA Appolio Theme for EasyBlog', '', 'easyblog_theme_appolio', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_appolio.xml', '', ''),
(70, 5, 0, 'JA Biz Theme for EasyBlog', '', 'easyblog_theme_biz', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_biz.xml', '', ''),
(71, 5, 0, 'JA Bookshop Theme for EasyBlog', '', 'easyblog_theme_bookshop', 'custom', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_bookshop.xml', '', ''),
(72, 5, 0, 'JA Decor Theme for EasyBlog', '', 'easyblog_theme_decor', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_decor.xml', '', ''),
(73, 5, 0, 'Theme Fixel for Easyblog J25 & J32', '', 'easyblog_theme_fixel', 'custom', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_fixel.xml', '', ''),
(74, 5, 0, 'Theme Magz for Easyblog J25 & J32', '', 'easyblog_theme_magz', 'custom', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_magz.xml', '', ''),
(75, 5, 0, 'JA Muzic Theme for EasyBlog', '', 'easyblog_theme_muzic', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_muzic.xml', '', ''),
(76, 5, 0, 'JA Obelisk Theme for EasyBlog', '', 'easyblog_theme_obelisk', 'custom', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_obelisk.xml', '', ''),
(77, 5, 0, 'JA Sugite Theme for EasyBlog', '', 'easyblog_theme_sugite', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_sugite.xml', '', ''),
(78, 5, 0, 'JA Anion template for Joomla 2.5', '', 'ja_anion', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_anion.xml', '', ''),
(79, 5, 0, 'JA Appolio Template', '', 'ja_appolio', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_appolio.xml', '', ''),
(80, 5, 0, 'JA Argo Template for J25 & J33', '', 'ja_argo', 'template', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_argo.xml', '', ''),
(81, 5, 0, 'JA Beranis Template', '', 'ja_beranis', 'template', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_beranis.xml', '', ''),
(82, 5, 0, 'JA Bistro Template for Joomla 2.5', '', 'ja_bistro', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_bistro.xml', '', ''),
(83, 5, 0, 'JA Blazes Template for J25 & J31', '', 'ja_blazes', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_blazes.xml', '', ''),
(84, 5, 0, 'JA Bookshop Template', '', 'ja_bookshop', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_bookshop.xml', '', ''),
(85, 5, 0, 'JA Brisk Template for J25 & J33', '', 'ja_brisk', 'template', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_brisk.xml', '', ''),
(86, 5, 0, 'JA Business Template for Joomla 2.5', '', 'ja_business', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_business.xml', '', ''),
(87, 5, 0, 'JA Cloris Template for Joomla 2.5.x', '', 'ja_cloris', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_cloris.xml', '', ''),
(88, 5, 0, 'JA Community PLus Template for Joomla 2.5', '', 'ja_community_plus', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_community_plus.xml', '', ''),
(89, 5, 0, 'JA Decor Template', '', 'ja_decor', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_decor.xml', '', ''),
(90, 5, 0, 'JA Droid Template for Joomla 2.5', '', 'ja_droid', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_droid.xml', '', ''),
(91, 5, 0, 'JA Edenite Template for J25 & J30', '', 'ja_edenite', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_edenite.xml', '', ''),
(92, 5, 0, 'JA Elastica Template for J25 & J32', '', 'ja_elastica', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_elastica.xml', '', ''),
(93, 5, 0, 'JA Erio Template for Joomla 2.5 & 3.1', '', 'ja_erio', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_erio.xml', '', ''),
(94, 5, 0, 'Ja Events Template for Joomla 2.5', '', 'ja_events', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_events.xml', '', ''),
(95, 5, 0, 'JA Fubix Template for J25 & J33', '', 'ja_fubix', 'template', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_fubix.xml', '', ''),
(96, 5, 0, 'JA Graphite Template for Joomla 2.5', '', 'ja_graphite', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_graphite.xml', '', ''),
(97, 5, 0, 'JA Hawkstore Template', '', 'ja_hawkstore', 'template', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/ja_hawkstore.xml', '', ''),
(98, 5, 0, 'JA Ironis Template for Joomla 2.5 & 3.1', '', 'ja_ironis', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_ironis.xml', '', ''),
(99, 5, 0, 'JA Jason template', '', 'ja_jason', 'template', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/ja_jason.xml', '', ''),
(100, 5, 0, 'JA Kranos Template for J25 & J30', '', 'ja_kranos', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_kranos.xml', '', ''),
(101, 5, 0, 'JA Lens Template for Joomla 2.5 & 3.1', '', 'ja_lens', 'template', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_lens.xml', '', ''),
(102, 5, 0, 'Ja Lime Template for Joomla 2.5 & J31', '', 'ja_lime', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_lime.xml', '', ''),
(103, 5, 0, 'JA Magz Template for J25 & J33', '', 'ja_magz', 'template', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_magz.xml', '', ''),
(104, 5, 0, 'JA Medicare Template', '', 'ja_medicare', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_medicare.xml', '', ''),
(105, 5, 0, 'JA Mendozite Template for J25 & J32', '', 'ja_mendozite', 'template', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_mendozite.xml', '', ''),
(106, 5, 0, 'JA Mero Template for J25 & J32', '', 'ja_mero', 'template', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_mero.xml', '', ''),
(107, 5, 0, 'JA Mers Template for J25 & J32', '', 'ja_mers', 'template', '', 0, '1.0.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_mers.xml', '', ''),
(108, 5, 0, 'JA Methys Template for Joomla 2.5', '', 'ja_methys', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_methys.xml', '', ''),
(109, 5, 0, 'Ja Minisite Template for Joomla 2.5', '', 'ja_minisite', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_minisite.xml', '', ''),
(110, 5, 0, 'JA Mitius Template', '', 'ja_mitius', 'template', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_mitius.xml', '', ''),
(111, 5, 0, 'JA Mixmaz Template', '', 'ja_mixmaz', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_mixmaz.xml', '', ''),
(112, 5, 0, 'JA Nex Template for J25 & J30', '', 'ja_nex', 'template', '', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_nex.xml', '', ''),
(113, 5, 0, 'JA Nex T3 Template', '', 'ja_nex_t3', 'template', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_nex_t3.xml', '', ''),
(114, 5, 0, 'JA Norite Template for J2.5 & J31', '', 'ja_norite', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_norite.xml', '', ''),
(115, 5, 0, 'JA Nuevo template', '', 'ja_nuevo', 'template', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_nuevo.xml', '', ''),
(116, 5, 0, 'JA Obelisk Template', '', 'ja_obelisk', 'template', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_obelisk.xml', '', ''),
(117, 5, 0, 'JA Onepage Template', '', 'ja_onepage', 'template', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_onepage.xml', '', ''),
(118, 5, 0, 'JA ores template for Joomla 2.5 & 3.1', '', 'ja_ores', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_ores.xml', '', ''),
(119, 5, 0, 'JA Orisite Template  for J25 & J32', '', 'ja_orisite', 'template', '', 0, '1.1.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_orisite.xml', '', ''),
(120, 5, 0, 'JA Playmag Template', '', 'ja_playmag', 'template', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_playmag.xml', '', ''),
(121, 5, 0, 'JA Portfolio Real Estate template for Joomla 1.6.x', '', 'ja_portfolio', 'file', '', 0, '1.0.0 beta', '', 'http://update.joomlart.com/service/tracking/j16/ja_portfolio.xml', '', ''),
(122, 5, 0, 'JA Portfolio Template for Joomla 2.5', '', 'ja_portfolio_real_estate', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_portfolio_real_estate.xml', '', ''),
(123, 5, 0, 'JA Puresite Template for J25 & J31', '', 'ja_puresite', 'template', '', 0, '1.0.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_puresite.xml', '', ''),
(124, 5, 0, 'JA Purity II template for Joomla 2.5 & 3.2', '', 'ja_purity_ii', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_purity_ii.xml', '', ''),
(125, 5, 0, 'JA Pyro Template for Joomla 2.5', '', 'ja_pyro', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_pyro.xml', '', ''),
(126, 5, 0, 'JA Rasite Template for J2.5 & J31', '', 'ja_rasite', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_rasite.xml', '', ''),
(127, 5, 0, 'JA Rave Template for Joomla 2.5', '', 'ja_rave', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_rave.xml', '', ''),
(128, 5, 0, 'JA Smashboard Template', '', 'ja_smashboard', 'template', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_smashboard.xml', '', ''),
(129, 5, 0, 'JA Social Template for Joomla 2.5', '', 'ja_social', 'template', '', 0, '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_social.xml', '', ''),
(130, 5, 0, 'JA Social T3 Template for J25 & J33', '', 'ja_social_ii', 'template', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_social_ii.xml', '', ''),
(131, 5, 0, 'JA Sugite Template', '', 'ja_sugite', 'template', '', 0, '1.1.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_sugite.xml', '', ''),
(132, 5, 0, 'JA System Pager Plugin for J25 & J30', '', 'ja_system_japager', 'plugin', 'ja_system_japager', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_system_japager.xml', '', ''),
(133, 5, 0, 'JA T3V2 Blank Template', '', 'ja_t3_blank', 'template', '', 0, '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_t3_blank.xml', '', ''),
(134, 5, 0, 'JA T3 Blank template for joomla 1.6', '', 'ja_t3_blank_j16', 'template', '', 0, '1.0.0 Beta', '', 'http://update.joomlart.com/service/tracking/j16/ja_t3_blank_j16.xml', '', ''),
(135, 5, 0, 'JA Blank Template for T3v3', '', 'ja_t3v3_blank', 'template', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_t3v3_blank.xml', '', ''),
(136, 5, 0, 'JA Teline III  Template for Joomla 1.6', '', 'ja_teline_iii', 'file', '', 0, '1.0.0 Beta', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iii.xml', '', ''),
(137, 5, 0, 'JA Teline IV Template for J2.5 and J3.2', '', 'ja_teline_iv', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iv.xml', '', ''),
(138, 5, 0, 'JA Teline IV T3 Template', '', 'ja_teline_iv_t3', 'template', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iv_t3.xml', '', ''),
(139, 5, 0, 'JA Tiris Template for J25 & J30', '', 'ja_tiris', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_tiris.xml', '', ''),
(140, 5, 0, 'JA Travel Template for Joomla 2.5 & 3.0', '', 'ja_travel', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_travel.xml', '', ''),
(141, 5, 0, 'JA University Template for J25 & J32', '', 'ja_university', 'template', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_university.xml', '', ''),
(142, 5, 0, 'JA University T3 template', '', 'ja_university_t3', 'template', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/ja_university_t3.xml', '', ''),
(143, 5, 0, 'JA Vintas Template for J25 & J31', '', 'ja_vintas', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_vintas.xml', '', ''),
(144, 5, 0, 'JA Wall Template for J25 & J33', '', 'ja_wall', 'template', '', 0, '1.2.0', '', 'http://update.joomlart.com/service/tracking/j16/ja_wall.xml', '', ''),
(145, 5, 0, 'JA ZiteTemplate', '', 'ja_zite', 'template', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_zite.xml', '', ''),
(146, 5, 0, 'JA Bookmark plugin for Joomla 1.6.x', '', 'jabookmark', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jabookmark.xml', '', ''),
(147, 5, 0, 'JA Comment plugin for Joomla 1.6.x', '', 'jacomment', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jacomment.xml', '', ''),
(148, 5, 0, 'JA Comment Off Plugin for Joomla 1.6', '', 'jacommentoff', 'file', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/jacommentoff.xml', '', ''),
(149, 5, 0, 'JA Comment On Plugin for Joomla 1.6', '', 'jacommenton', 'file', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/jacommenton.xml', '', ''),
(150, 5, 0, 'JA Content Extra Fields for Joomla 1.6', '', 'jacontentextrafields', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jacontentextrafields.xml', '', ''),
(151, 5, 0, 'JA Disqus Debate Echo plugin for Joomla 1.6.x', '', 'jadisqus_debate_echo', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jadisqus_debate_echo.xml', '', ''),
(152, 5, 0, 'JA System Google Map plugin for Joomla 1.6.x', '', 'jagooglemap', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jagooglemap.xml', '', ''),
(153, 5, 0, 'JA Google Translate plugin for Joomla 1.6.x', '', 'jagoogletranslate', 'plugin', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jagoogletranslate.xml', '', ''),
(154, 5, 0, 'JA Highslide plugin for Joomla 1.6.x', '', 'jahighslide', 'plugin', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jahighslide.xml', '', ''),
(155, 5, 0, 'JA K2 Search Plugin for Joomla 2.5', '', 'jak2_filter', 'plugin', '', 0, '1.0.0 Alpha', '', 'http://update.joomlart.com/service/tracking/j16/jak2_filter.xml', '', ''),
(156, 5, 0, 'JA K2 Extra Fields Plugin for Joomla 2.5', '', 'jak2_indexing', 'plugin', '', 0, '1.0.0 Alpha', '', 'http://update.joomlart.com/service/tracking/j16/jak2_indexing.xml', '', ''),
(157, 5, 0, 'JA Load module Plugin for Joomla 2.5', '', 'jaloadmodule', 'plugin', 'jaloadmodule', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/jaloadmodule.xml', '', ''),
(158, 5, 0, 'JA System Nrain plugin for Joomla 1.6.x', '', 'janrain', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/janrain.xml', '', ''),
(159, 5, 0, 'JA Popup plugin for Joomla 1.6', '', 'japopup', 'file', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/japopup.xml', '', ''),
(160, 5, 0, 'JA System Social plugin for Joomla 1.7', '', 'jasocial', 'file', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/jasocial.xml', '', ''),
(161, 5, 0, 'JA T3 System plugin for Joomla 1.6', '', 'jat3', 'plugin', '', 0, '1.0.0 Beta', '', 'http://update.joomlart.com/service/tracking/j16/jat3.xml', '', ''),
(162, 5, 0, 'JA Tabs plugin for Joomla 1.6.x', '', 'jatabs', 'plugin', 'jatabs', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/jatabs.xml', '', ''),
(163, 5, 0, 'JA Typo plugin For Joomla 1.6', '', 'jatypo', 'plugin', 'jatypo', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jatypo.xml', '', ''),
(164, 5, 0, 'Jomsocial Theme 3.x for JA Social', '', 'jomsocial_theme_social', 'custom', '', 0, '3.2.x', '', 'http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social.xml', '', ''),
(165, 5, 0, 'JA Jomsocial theme for Joomla 2.5', '', 'jomsocial_theme_social_j16', 'file', '', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social_j16.xml', '', ''),
(166, 5, 0, 'JA Jomsocial theme for Joomla 2.5', '', 'jomsocial_theme_social_j16_26', 'custom', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social_j16_26.xml', '', ''),
(167, 5, 0, 'JShopping Template for Ja Orisite', '', 'jshopping_theme_orisite', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jshopping_theme_orisite.xml', '', ''),
(168, 5, 0, 'JA Tiris Jshopping theme for J25 & J30', '', 'jshopping_theme_tiris', 'custom', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/jshopping_theme_tiris.xml', '', ''),
(169, 5, 0, 'Theme for Jshopping j17', '', 'jshopping_theme_tiris_j17', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jshopping_theme_tiris_j17.xml', '', ''),
(170, 5, 0, 'JA Kranos kunena theme for Joomla 2.5', '', 'kunena_theme_kranos_j17', 'custom', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_kranos_j17.xml', '', ''),
(171, 5, 0, 'Kunena Template for JA Mendozite', '', 'kunena_theme_mendozite', 'custom', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_mendozite.xml', '', ''),
(172, 5, 0, 'JA Mitius Kunena Theme for Joomla 25 ', '', 'kunena_theme_mitius', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_mitius.xml', '', ''),
(173, 5, 0, 'Kunena theme for JA Nex J2.5', '', 'kunena_theme_nex_j17', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_nex_j17.xml', '', ''),
(174, 5, 0, 'Kunena theme for JA Nex T3', '', 'kunena_theme_nex_t3', 'custom', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_nex_t3.xml', '', ''),
(175, 5, 0, 'Kunena Template for Ja Orisite', '', 'kunena_theme_orisite', 'custom', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_orisite.xml', '', ''),
(176, 5, 0, 'Kunena theme for ja PlayMag', '', 'kunena_theme_playmag', 'custom', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_playmag.xml', '', ''),
(177, 5, 0, 'Kunena theme for JA Social T3', '', 'kunena_theme_social', 'custom', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_social.xml', '', ''),
(178, 5, 0, 'Kunena theme for Joomla 2.5', '', 'kunena_theme_social_j16', 'custom', '', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_social_j16.xml', '', ''),
(179, 5, 0, 'JA Tiris kunena theme for Joomla 2.5', '', 'kunena_theme_tiris_j16', 'custom', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_tiris_j16.xml', '', ''),
(180, 5, 0, 'JA Bookshop Theme for Mijoshop', '', 'mijoshop_theme_bookshop', 'custom', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mijoshop_theme_bookshop.xml', '', ''),
(181, 5, 0, 'JA Decor Theme for Mijoshop', '', 'mijoshop_theme_decor', 'custom', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mijoshop_theme_decor.xml', '', ''),
(182, 5, 0, 'JA ACM Module', '', 'mod_ja_acm', 'module', '', 0, '2.0.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_ja_acm.xml', '', ''),
(183, 5, 0, 'JA Jobs Tags module for Joomla 2.5', '', 'mod_ja_jobs_tags', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_ja_jobs_tags.xml', '', ''),
(184, 5, 0, 'JA Accordion Module for J25 & J33', '', 'mod_jaaccordion', 'module', '', 0, '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaaccordion.xml', '', ''),
(185, 5, 0, 'JA Animation module for Joomla 2.5 & 3.2', '', 'mod_jaanimation', 'module', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaanimation.xml', '', ''),
(186, 5, 0, 'JA Bulletin Module for J25 & J3', '', 'mod_jabulletin', 'module', '', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/mod_jabulletin.xml', '', ''),
(187, 5, 0, 'JA Latest Comment Module for Joomla 2.5 & 3.3', '', 'mod_jaclatest_comments', 'module', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaclatest_comments.xml', '', ''),
(188, 5, 0, 'JA Content Popup Module for J25 & J33', '', 'mod_jacontentpopup', 'module', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentpopup.xml', '', ''),
(189, 5, 0, 'JA Content Scroll module for Joomla 1.6', '', 'mod_jacontentscroll', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentscroll.xml', '', ''),
(190, 5, 0, 'JA Contenslider module for Joomla 1.6', '', 'mod_jacontentslide', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentslide.xml', '', ''),
(191, 5, 0, 'JA Content Slider Module for J25 & J33', '', 'mod_jacontentslider', 'module', '', 0, '2.7.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentslider.xml', '', ''),
(192, 5, 0, 'JA CountDown Module for J25 & J33', '', 'mod_jacountdown', 'module', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacountdown.xml', '', ''),
(193, 5, 0, 'JA Facebook Activity Module for J25 & J30', '', 'mod_jafacebookactivity', 'module', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafacebookactivity.xml', '', ''),
(194, 5, 0, 'JA Facebook Like Box Module for J25 & J30', '', 'mod_jafacebooklikebox', 'module', '', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafacebooklikebox.xml', '', ''),
(195, 5, 0, 'JA Featured Employer module for Joomla 2.5', '', 'mod_jafeatured_employer', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafeatured_employer.xml', '', ''),
(196, 5, 0, 'JA Filter Jobs module for Joomla 2.5', '', 'mod_jafilter_jobs', 'module', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafilter_jobs.xml', '', ''),
(197, 5, 0, 'JA flowlist module for Joomla 2.5 & 3.0', '', 'mod_jaflowlist', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaflowlist.xml', '', ''),
(198, 5, 0, 'JAEC Halloween Module for Joomla 2.5 & 3', '', 'mod_jahalloween', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jahalloween.xml', '', ''),
(199, 5, 0, 'JA Image Hotspot Module for Joomla 2.5 & 3.4', '', 'mod_jaimagehotspot', 'module', '', 0, '1.0.8', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaimagehotspot.xml', '', ''),
(200, 5, 0, 'JA static module for Joomla 2.5', '', 'mod_jajb_statistic', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajb_statistic.xml', '', ''),
(201, 5, 0, 'JA Jobboard Menu module for Joomla 2.5', '', 'mod_jajobboard_menu', 'module', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajobboard_menu.xml', '', ''),
(202, 5, 0, 'JA Jobs Counter module for Joomla 2.5', '', 'mod_jajobs_counter', 'module', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajobs_counter.xml', '', ''),
(203, 5, 0, 'JA Jobs Map module for Joomla 2.5', '', 'mod_jajobs_map', 'module', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajobs_map.xml', '', ''),
(204, 5, 0, 'JA K2 Fillter Module for Joomla 2.5', '', 'mod_jak2_filter', 'module', '', 0, '1.0.0 Alpha', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2_filter.xml', '', ''),
(205, 5, 0, 'JA K2 Filter Module for J25 & J3.3', '', 'mod_jak2filter', 'module', '', 0, '1.1.8', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2filter.xml', '', ''),
(206, 5, 0, 'JA K2 Timeline', '', 'mod_jak2timeline', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2timeline.xml', '', ''),
(207, 5, 0, 'JA Latest Resumes module for Joomla 2.5', '', 'mod_jalatest_resumes', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalatest_resumes.xml', '', ''),
(208, 5, 0, 'JA List Employer module for Joomla 2.5', '', 'mod_jalist_employers', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalist_employers.xml', '', ''),
(209, 5, 0, 'JA List Jobs module for Joomla 2.5', '', 'mod_jalist_jobs', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalist_jobs.xml', '', ''),
(210, 5, 0, 'JA List Resumes module for Joomla 2.5', '', 'mod_jalist_resumes', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalist_resumes.xml', '', ''),
(211, 5, 0, 'JA Login module for J25 & J33', '', 'mod_jalogin', 'module', '', 0, '2.6.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalogin.xml', '', ''),
(212, 5, 0, 'JA Masshead Module for J25 & J33', '', 'mod_jamasshead', 'module', '', 0, '2.6.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jamasshead.xml', '', ''),
(213, 5, 0, 'JA News Featured Module for J25 & J33', '', 'mod_janews_featured', 'module', '', 0, '2.6.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_janews_featured.xml', '', ''),
(214, 5, 0, 'JA Newsflash module for Joomla 1.6.x', '', 'mod_janewsflash', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewsflash.xml', '', ''),
(215, 5, 0, 'JA Newsmoo module for Joomla 1.6.x', '', 'mod_janewsmoo', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewsmoo.xml', '', ''),
(216, 5, 0, 'JA News Pro Module for J25 & J33', '', 'mod_janewspro', 'module', '', 0, '2.6.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', '', ''),
(217, 5, 0, 'JA Newsticker Module for J25 & J33', '', 'mod_janewsticker', 'module', '', 0, '2.6.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewsticker.xml', '', ''),
(218, 5, 0, 'JA Quick Contact Module for J25 & J33', '', 'mod_jaquickcontact', 'module', '', 0, '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaquickcontact.xml', '', ''),
(219, 5, 0, 'JA Recent Viewed Jobs module for Joomla 2.5', '', 'mod_jarecent_viewed_jobs', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jarecent_viewed_jobs.xml', '', ''),
(220, 5, 0, 'JA SideNews Module for J25 & J33', '', 'mod_jasidenews', 'module', '', 0, '2.6.6', '', 'http://update.joomlart.com/service/tracking/j16/mod_jasidenews.xml', '', ''),
(221, 5, 0, 'JA Slideshow Module for J25 & J33', '', 'mod_jaslideshow', 'module', '', 0, '2.7.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaslideshow.xml', '', ''),
(222, 5, 0, 'JA Slideshow Lite Module for J25 & J3.3', '', 'mod_jaslideshowlite', 'module', '', 0, '1.2.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaslideshowlite.xml', '', ''),
(223, 5, 0, 'JA Soccerway Module for J25 & J33', '', 'mod_jasoccerway', 'module', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jasoccerway.xml', '', ''),
(224, 5, 0, 'JA Social Locker module', '', 'mod_jasocial_locker', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jasocial_locker.xml', '', ''),
(225, 5, 0, 'JA Tab module for Joomla 2.5', '', 'mod_jatabs', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jatabs.xml', '', ''),
(226, 5, 0, 'JA Toppanel Module for Joomla 2.5 & Joomla 3.3', '', 'mod_jatoppanel', 'module', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_jatoppanel.xml', '', ''),
(227, 5, 0, 'JA Twitter Module for J25 & J3.3', '', 'mod_jatwitter', 'module', '', 0, '2.6.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jatwitter.xml', '', ''),
(228, 5, 0, 'JA List of Voices Module for J2.5 & J3.x', '', 'mod_javlist_voices', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javlist_voices.xml', '', ''),
(229, 5, 0, 'JA VMProducts Module', '', 'mod_javmproducts', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_javmproducts.xml', '', ''),
(230, 5, 0, 'JA Voice  Work Flow Module for J2.5 & J3.x', '', 'mod_javwork_flow', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javwork_flow.xml', '', ''),
(231, 5, 0, 'JA Amazon S3 Button Plugin for joomla 2.5 & 3.1', '', 'jaamazons3', 'plugin', 'button', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jaamazons3.xml', '', ''),
(232, 5, 0, 'JA AVTracklist Button plugin for J2.5 & J3.3', '', 'jaavtracklist', 'plugin', 'button', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jaavtracklist.xml', '', ''),
(233, 5, 0, 'JA Comment Off Plugin for Joomla 2.5 & 3.3', '', 'jacommentoff', 'plugin', 'button', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jacommentoff.xml', '', ''),
(234, 5, 0, 'JA Comment On Plugin for Joomla 2.5 & 3.3', '', 'jacommenton', 'plugin', 'button', 0, '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jacommenton.xml', '', ''),
(235, 5, 0, 'JA Amazon S3 System plugin for joomla 2.5 & 3.1', '', 'plg_jaamazons3', 'plugin', 'plg_jaamazons3', 0, '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_jaamazons3.xml', '', ''),
(236, 5, 0, 'JA AVTracklist plugin for J2.5 & J3.3', '', 'plg_jaavtracklist', 'plugin', 'plg_jaavtracklist', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_jaavtracklist.xml', '', ''),
(237, 5, 0, 'JA Bookmark plugin for J2.5 & J3.2', '', 'plg_jabookmark', 'plugin', 'plg_jabookmark', 0, '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/plg_jabookmark.xml', '', ''),
(238, 5, 0, 'JA Comment Plugin for Joomla 2.5 & 3.3', '', 'plg_jacomment', 'plugin', 'plg_jacomment', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/plg_jacomment.xml', '', ''),
(239, 5, 0, 'JA Disqus Debate Echo plugin for J2.5 & J3.2', '', 'debate_echo', 'plugin', 'jadisqus', 0, '2.6.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_jadisqus_debate_echo.xml', '', ''),
(240, 5, 0, 'JA Google Storage Plugin for j25 & j30', '', 'plg_jagooglestorage', 'plugin', 'plg_jagooglestorage', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jagooglestorage.xml', '', ''),
(241, 5, 0, 'JA Translate plugin for Joomla 1.6.x', '', 'plg_jagoogletranslate', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jagoogletranslate.xml', '', ''),
(242, 5, 0, 'JA Thumbnail Plugin for J25 & J3', '', 'plg_jathumbnail', 'plugin', 'plg_jathumbnail', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/plg_jathumbnail.xml', '', ''),
(243, 5, 0, 'JA Tooltips plugin for Joomla 1.6.x', '', 'plg_jatooltips', 'plugin', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jatooltips.xml', '', ''),
(244, 5, 0, 'JA Typo Button Plugin for J25 & J32', '', 'plg_jatypobutton', 'plugin', 'plg_jatypobutton', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/plg_jatypobutton.xml', '', ''),
(245, 5, 0, 'JA K2 Filter Plg for J25 & J3.2', '', 'jak2filter', 'plugin', 'k2', 0, '1.1.8', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', '', ''),
(246, 5, 0, 'JA K2 Timeline Plugin', '', 'jak2timeline', 'plugin', 'k2', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2timeline.xml', '', ''),
(247, 5, 0, 'Multi Capcha Engine Plugin for J25 & J32', '', 'captcha_engine', 'plugin', 'multiple', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_multiple_captcha_engine.xml', '', ''),
(248, 5, 0, 'JA JobBoard Payment Plugin Authorize for Joomla 2.5', '', 'plg_payment_jajb_authorize_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_authorize_25.xml', '', ''),
(249, 5, 0, 'JA JobBoard Payment Plugin MoneyBooker for Joomla 2.5', '', 'plg_payment_jajb_moneybooker_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_moneybooker_25.xml', '', ''),
(250, 5, 0, 'JA JobBoard Payment Plugin Paypal for Joomla 2.5', '', 'plg_payment_jajb_paypal_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_paypal_25.xml', '', ''),
(251, 5, 0, 'JA JobBoard Payment Plugin BankWire for Joomla 2.5', '', 'plg_payment_jajb_wirebank_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_wirebank_25.xml', '', ''),
(252, 5, 0, 'JA Search Comment Plugin for Joomla J2.5 & 3.0', '', 'jacomment', 'plugin', 'search', 0, '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_search_jacomment.xml', '', ''),
(253, 5, 0, 'JA Search Jobs plugin for Joomla 2.5', '', 'jajob', 'plugin', 'search', 0, '1.0.0 stable', '', 'http://update.joomlart.com/service/tracking/j16/plg_search_jajob.xml', '', ''),
(254, 5, 0, 'JA System Comment Plugin for Joomla 2.5 & 3.3', '', 'jacomment', 'plugin', 'system', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jacomment.xml', '', ''),
(255, 5, 0, 'JA Content Extra Fields for Joomla 2.5', '', 'jacontentextrafields', 'plugin', 'system', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jacontentextrafields.xml', '', ''),
(256, 5, 0, 'JA System Google Map plugin for J2.5 & J3.3', '', 'jagooglemap', 'plugin', 'system', 0, '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jagooglemap.xml', '', ''),
(257, 5, 0, 'JAEC PLG System Jobboad Jomsocial Synchonization', '', 'jajb_jomsocial', 'plugin', 'system', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jajb_jomsocial.xml', '', ''),
(258, 5, 0, 'JA System Lazyload Plugin for J25 & J32', '', 'jalazyload', 'plugin', 'system', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jalazyload.xml', '', ''),
(259, 5, 0, 'JA System Nrain Plugin for Joomla 2.5 & 3.3', '', 'janrain', 'plugin', 'system', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_janrain.xml', '', ''),
(260, 5, 0, 'JA Popup Plugin for J25 & J33', '', 'japopup', 'plugin', 'system', 0, '2.6.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_japopup.xml', '', ''),
(261, 5, 0, 'JA System Social Plugin for Joomla 2.5 & 3.0', '', 'jasocial', 'plugin', 'system', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jasocial.xml', '', ''),
(262, 5, 0, 'JA System Social Feed Plugin for J25 & J3.3', '', 'jasocial_feed', 'plugin', 'system', 0, '1.1.9', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jasocial_feed.xml', '', ''),
(263, 5, 0, 'JA T3v2 System Plugin for J25 & J32', '', 'jat3', 'plugin', 'system', 0, '2.7.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jat3.xml', '', ''),
(264, 5, 0, 'JA T3v3 System Plugin', '', 'jat3v3', 'plugin', 'system', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jat3v3.xml', '', ''),
(265, 5, 0, 'JA Tabs Plugin for J25 & J3.3', '', 'jatabs', 'plugin', 'system', 0, '2.6.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jatabs.xml', '', ''),
(266, 5, 0, 'JA Typo Plugin for J25 & J32', '', 'jatypo', 'plugin', 'system', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jatypo.xml', '', ''),
(267, 5, 0, 'T3 Blank Template', '', 't3_blank', 'template', '', 0, '2.1.8', '', 'http://update.joomlart.com/service/tracking/j16/t3_blank.xml', '', ''),
(268, 5, 0, 'T3 B3 Blank Template', '', 't3_bs3_blank', 'template', '', 0, '2.1.4', '', 'http://update.joomlart.com/service/tracking/j16/t3_bs3_blank.xml', '', ''),
(269, 5, 0, 'JA Teline III Template for Joomla 2.5', '', 'teline_iii', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/teline_iii.xml', '', ''),
(270, 5, 0, 'Thirdparty Extensions Compatibility Bundle', '', 'thirdparty_exts_compatibility', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/thirdparty_exts_compatibility.xml', '', ''),
(271, 5, 0, 'Uber Template', '', 'uber', 'template', '', 0, '2.0.3', '', 'http://update.joomlart.com/service/tracking/j16/uber.xml', '', ''),
(272, 5, 0, 'T3 B3 Blank Template', '', 't3_bs3_blank', 'template', '', 0, '2.1.8', '', 'http://update.joomlart.com/service/tracking/j30/t3_bs3_blank.xml', '', ''),
(273, 5, 0, 'JA K2 v3 Filter package for J33', '', 'com_jak2v3filter', 'component', '', 1, '3.0.0 preview ', '', 'http://update.joomlart.com/service/tracking/j31/com_jak2v3filter.xml', '', ''),
(274, 5, 0, 'JA Multilingual Component for J25 & J3', '', 'com_jalang', 'component', '', 1, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j31/com_jalang.xml', '', ''),
(275, 5, 0, 'JA Sugite Theme for EasyBlog', '', 'easyblog_theme_sugite', 'custom', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j31/easyblog_theme_sugite.xml', '', ''),
(276, 5, 0, 'JA Biz Template', '', 'ja_biz', 'template', '', 0, '1.1.3', '', 'http://update.joomlart.com/service/tracking/j31/ja_biz.xml', '', ''),
(277, 5, 0, 'JA Cago template', '', 'ja_cago', 'template', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/ja_cago.xml', '', ''),
(278, 5, 0, 'JA Cagox template', '', 'ja_cagox', 'template', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/ja_cagox.xml', '', ''),
(279, 5, 0, 'JA Fixel Template', '', 'ja_fixel', 'template', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j31/ja_fixel.xml', '', ''),
(280, 5, 0, 'JA Hotel Template', '', 'ja_hotel', 'template', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/ja_hotel.xml', '', ''),
(281, 5, 0, 'JA Muzic Template for J25 & J33', '', 'ja_muzic', 'template', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j31/ja_muzic.xml', '', ''),
(282, 5, 0, 'JA Teline V Template', '', 'ja_teline_v', 'template', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/ja_teline_v.xml', '', ''),
(283, 5, 0, 'Theme Fixel for JShopping J25 & J32', '', 'jshopping_theme_fixel', 'custom', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j31/jshopping_theme_fixel.xml', '', ''),
(284, 5, 0, 'JA Google Chart Module', '', 'mod_jagooglechart', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/mod_jagooglechart.xml', '', ''),
(285, 5, 0, 'JA K2 v3 Filter Module for J33', '', 'mod_jak2v3filter', 'module', '', 0, '3.0.0 preview ', '', 'http://update.joomlart.com/service/tracking/j31/mod_jak2v3filter.xml', '', ''),
(286, 5, 0, 'JA Promo Bar module', '', 'mod_japromobar', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/mod_japromobar.xml', '', ''),
(287, 5, 0, 'Ja Yahoo Finance', '', 'mod_jayahoo_finance', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/mod_jayahoo_finance.xml', '', '');
INSERT INTO `#__updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(288, 5, 0, 'Ja Yahoo Weather', '', 'mod_jayahoo_weather', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/mod_jayahoo_weather.xml', '', ''),
(289, 5, 0, 'Plugin Ajax JA Content Type', '', 'jacontenttype', 'plugin', 'ajax', 0, '1.0.0 Beta', '', 'http://update.joomlart.com/service/tracking/j31/plg_ajax_jacontenttype.xml', '', ''),
(290, 5, 0, 'JA K2 v3 Filter Plugin for J33', '', 'jak2v3filter', 'plugin', 'k2', 0, '3.0.0 preview ', '', 'http://update.joomlart.com/service/tracking/j31/plg_k2_jak2v3filter.xml', '', ''),
(291, 5, 0, 'Plugin JA Content Type', '', 'jacontenttype', 'plugin', 'system', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/plg_system_jacontenttype.xml', '', ''),
(292, 5, 0, 'Purity III Template', '', 'purity_iii', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j31/purity_iii.xml', '', ''),
(293, 5, 0, 'Sample package for Uber App', '', 'uber_app', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_app.xml', '', ''),
(294, 5, 0, 'Sample package for Uber Business', '', 'uber_business', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_business.xml', '', ''),
(295, 5, 0, 'Sample package for Uber Charity', '', 'uber_charity', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_charity.xml', '', ''),
(296, 5, 0, 'Sample package for Uber Church', '', 'uber_church', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_church.xml', '', ''),
(297, 5, 0, 'Sample package for Uber Construction', '', 'uber_construction', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_construction.xml', '', ''),
(298, 5, 0, 'Sample package for Uber Corporate', '', 'uber_corporate', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_corporate.xml', '', ''),
(299, 5, 0, 'Sample package for Uber Gym', '', 'uber_gym', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_gym.xml', '', ''),
(300, 5, 0, 'Sample package for Uber Home', '', 'uber_home', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_home.xml', '', ''),
(301, 5, 0, 'Sample package for Uber Lawyer', '', 'uber_lawyer', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_lawyer.xml', '', ''),
(302, 5, 0, 'Sample package for Uber Music', '', 'uber_music', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_music.xml', '', ''),
(303, 5, 0, 'Sample package for Uber Restaurant', '', 'uber_restaurant', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_restaurant.xml', '', ''),
(304, 5, 0, 'Sample package for Uber Spa', '', 'uber_spa', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_spa.xml', '', ''),
(305, 5, 0, 'Sample package for Uber University', '', 'uber_university', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_university.xml', '', ''),
(306, 5, 0, 'Sample package for Uber Wedding', '', 'uber_wedding', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_wedding.xml', '', ''),
(307, 8, 0, 'Weblinks Extension Package', 'Joomla! CMS Weblinks Package', 'pkg_weblinks', 'package', '', 1, '3.4.0', '', 'https://raw.githubusercontent.com/joomla-extensions/weblinks/master/manifest.xml', 'https://github.com/joomla-extensions/weblinks', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__update_sites`
--

CREATE TABLE IF NOT EXISTS `#__update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=9 ;

--
-- Dumping data for table `#__update_sites`
--

INSERT INTO `#__update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/sts/list_sts.xml', 1, 1427254867, ''),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1427254867, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 1427254867, ''),
(4, 'K2 Updates', 'extension', 'http://getk2.org/update.xml', 1, 1427254867, ''),
(5, '', 'collection', 'http://update.joomlart.com/service/tracking/list.xml', 1, 1427254867, ''),
(6, 'AcyMailing', 'extension', 'http://www.acyba.com/component/updateme/updatexml/component-acymailing/level-Starter/file-extension.xml', 1, 1427254867, ''),
(7, 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1427254867, ''),
(8, 'Weblinks Update Site', 'extension', 'https://raw.githubusercontent.com/joomla-extensions/weblinks/master/manifest.xml', 1, 1427254867, '');

-- --------------------------------------------------------

--
-- Table structure for table `#__update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `#__update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `#__update_sites_extensions`
--

INSERT INTO `#__update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 10000),
(5, 10014),
(5, 10015),
(6, 10023),
(7, 28),
(8, 801);

-- --------------------------------------------------------

--
-- Table structure for table `#__usergroups`
--

CREATE TABLE IF NOT EXISTS `#__usergroups` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `#__usergroups`
--

INSERT INTO `#__usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 20, 'Public'),
(2, 1, 6, 17, 'Registered'),
(3, 2, 7, 14, 'Author'),
(4, 3, 8, 11, 'Editor'),
(5, 4, 9, 10, 'Publisher'),
(6, 1, 2, 5, 'Manager'),
(7, 6, 3, 4, 'Administrator'),
(8, 1, 18, 19, 'Super Users'),
(10, 3, 12, 13, 'Shop Suppliers (Example)'),
(12, 2, 15, 16, 'Customer Group (Example)');

-- --------------------------------------------------------

--
-- Table structure for table `#__users`
--

CREATE TABLE IF NOT EXISTS `#__users` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=125 ;

--
-- Dumping data for table `#__users`
--

INSERT INTO `#__users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(124, 'Super User', 'bowthemes', 'sdfsdf@dgdf.ghd', '$2y$10$uMWVW5oB/djLCx1nMVyDl.6pIRnQ/uIphX/3KIFbFcdSSVSghwtu2', 0, 1, '2015-02-09 06:19:04', '2015-03-25 03:06:00', '0', '{}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__user_keys`
--

CREATE TABLE IF NOT EXISTS `#__user_keys` (
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
-- Table structure for table `#__user_notes`
--

CREATE TABLE IF NOT EXISTS `#__user_notes` (
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
-- Table structure for table `#__user_profiles`
--

CREATE TABLE IF NOT EXISTS `#__user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `#__user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `#__user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__user_usergroup_map`
--

INSERT INTO `#__user_usergroup_map` (`user_id`, `group_id`) VALUES
(124, 8);

-- --------------------------------------------------------

--
-- Table structure for table `#__viewlevels`
--

CREATE TABLE IF NOT EXISTS `#__viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `#__viewlevels`
--

INSERT INTO `#__viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(4, 'Customer Access Level (Example)', 3, '[6,3,12]');

-- --------------------------------------------------------

--
-- Table structure for table `#__weblinks`
--

CREATE TABLE IF NOT EXISTS `#__weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
