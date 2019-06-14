-- Adminer 4.6.3 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `priorities`;
CREATE TABLE `priorities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(64) NOT NULL,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `priorities` (`id`, `slug`, `name`) VALUES
(1,	'low',	'Low'),
(2,	'normal',	'Normal'),
(3,	'high',	'High');

DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(64) CHARACTER SET latin1 NOT NULL,
  `name` varchar(256) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `status` (`id`, `slug`, `name`) VALUES
(1,	'open',	'Open'),
(2,	'doing',	'Doing'),
(3,	'waiting',	'Waiting'),
(4,	'closed',	'Closed');

DROP TABLE IF EXISTS `tickets`;
CREATE TABLE `tickets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(256) NOT NULL,
  `priority_id` int(11) NOT NULL,
  `status_id` tinyint(4) NOT NULL,
  `user_id` int(11) NOT NULL,
  `assigned_to_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tickets` (`id`, `subject`, `priority_id`, `status_id`, `user_id`, `assigned_to_user_id`) VALUES
(3,	'My computer is on fire🔥🔥',	3,	1,	2,	NULL),
(4,	'MS Word is not starting, can someone help?👴🏿',	1,	2,	3,	2),
(5,	'There is a bug in the 🛒 of the webshop, steps to reproduce are included',	3,	2,	4,	2),
(6,	'404 error: website not found - website down?💀',	3,	4,	4,	2);

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(256) CHARACTER SET latin1 NOT NULL,
  `email` varchar(256) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `users` (`id`, `name`, `email`) VALUES
(2,	'Dirk Wolthuis',	'hallo@ikbendirk.nl'),
(3,	'Chris Vogt',	'chris_vogt@ikbendirk.nl'),
(4,	'Andrew Clark',	'andrew_clark@ikbendirk.nl');

-- 2019-06-14 19:39:29
