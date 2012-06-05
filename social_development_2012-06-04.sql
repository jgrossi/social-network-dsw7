# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.11)
# Database: social_development
# Generation Time: 2012-06-04 17:06:58 -0300
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table friends
# ------------------------------------------------------------

DROP TABLE IF EXISTS `friends`;

CREATE TABLE `friends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `friend_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;

INSERT INTO `friends` (`id`, `user_id`, `friend_id`, `created_at`, `updated_at`)
VALUES
	(9,3,4,'2012-06-02 19:34:50','2012-06-02 19:34:50'),
	(10,3,7,'2012-06-02 19:48:15','2012-06-02 19:48:15'),
	(35,3,7,'2012-06-02 21:36:49','2012-06-02 21:36:49'),
	(56,3,31,'2012-06-03 01:47:56','2012-06-03 01:47:56'),
	(57,3,18,'2012-06-03 01:48:06','2012-06-03 01:48:06'),
	(67,42,0,'2012-06-03 02:23:25','2012-06-03 02:23:25'),
	(71,27,42,'2012-06-03 03:19:09','2012-06-03 03:19:09'),
	(72,42,9,'2012-06-03 14:49:00','2012-06-03 14:49:00'),
	(73,42,14,'2012-06-03 14:54:22','2012-06-03 14:54:22'),
	(74,42,27,'2012-06-03 17:34:56','2012-06-03 17:34:56'),
	(75,14,42,'2012-06-03 19:18:45','2012-06-03 19:18:45'),
	(76,14,18,'2012-06-03 19:20:03','2012-06-03 19:20:03'),
	(77,14,13,'2012-06-03 19:20:04','2012-06-03 19:20:04'),
	(78,14,24,'2012-06-03 19:20:05','2012-06-03 19:20:05'),
	(79,14,20,'2012-06-03 19:20:07','2012-06-03 19:20:07'),
	(80,14,19,'2012-06-03 19:20:09','2012-06-03 19:20:09'),
	(82,18,31,'2012-06-03 19:33:20','2012-06-03 19:33:20'),
	(83,18,14,'2012-06-03 19:33:22','2012-06-03 19:33:22'),
	(84,18,27,'2012-06-03 19:33:23','2012-06-03 19:33:23'),
	(85,31,18,'2012-06-03 19:35:14','2012-06-03 19:35:14'),
	(86,31,27,'2012-06-03 19:35:15','2012-06-03 19:35:15'),
	(87,31,14,'2012-06-03 19:35:16','2012-06-03 19:35:16'),
	(88,31,42,'2012-06-03 19:35:21','2012-06-03 19:35:21'),
	(89,42,18,'2012-06-03 19:40:41','2012-06-03 19:40:41'),
	(90,42,24,'2012-06-03 19:40:42','2012-06-03 19:40:42'),
	(91,42,25,'2012-06-03 19:40:44','2012-06-03 19:40:44'),
	(92,27,31,'2012-06-03 19:41:52','2012-06-03 19:41:52'),
	(93,42,5,'2012-06-04 12:27:23','2012-06-04 12:27:23'),
	(94,42,31,'2012-06-04 12:28:30','2012-06-04 12:28:30');

/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table messages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author_id` int(11) DEFAULT NULL,
  `destiny_id` int(11) DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;

INSERT INTO `messages` (`id`, `author_id`, `destiny_id`, `text`, `created_at`, `updated_at`)
VALUES
	(1,3,4,'This is a message','2012-04-24 00:19:05','2012-04-24 00:19:05'),
	(12,4,3,'Other comment','2012-04-24 01:34:30','2012-04-24 01:34:30'),
	(19,3,3,'test','2012-04-24 23:36:50','2012-04-24 23:36:50'),
	(21,3,3,'este1','2012-04-24 23:57:36','2012-04-24 23:57:36'),
	(22,3,4,'Second message','2012-05-21 23:06:50','2012-05-21 23:06:50'),
	(23,3,3,'This is a message','2012-06-02 03:53:25','2012-06-02 03:53:25'),
	(24,3,3,'This is a message from Junior GROSSI','2012-06-02 16:45:25','2012-06-02 16:45:25'),
	(25,42,9,'Hi Karen! This post is my first! Thanks for add!','2012-06-03 14:52:09','2012-06-03 14:52:09'),
	(26,42,31,'Hi Andressa! This is a message test!','2012-06-03 19:15:49','2012-06-03 19:15:49'),
	(27,42,14,'Hi Carol!','2012-06-03 19:17:37','2012-06-03 19:17:37'),
	(28,14,31,'Hi Andressa! I\'m Carolina!','2012-06-03 19:18:16','2012-06-03 19:18:16'),
	(29,31,18,'Hi Bruno!','2012-06-03 19:38:37','2012-06-03 19:38:37'),
	(30,31,14,'Hi Carol!!!!!! I missing you...','2012-06-03 19:38:55','2012-06-03 19:38:55'),
	(31,31,27,'Are you at home now? See you...','2012-06-03 19:39:11','2012-06-03 19:39:11'),
	(32,14,14,'Thanks guys!!!','2012-06-03 19:39:52','2012-06-03 19:39:52'),
	(33,42,42,'My first message to myself!','2012-06-03 19:40:32','2012-06-03 19:40:32'),
	(34,27,27,'Hi Andressa! No, I am out home now, at my iPhone! Kissss***','2012-06-03 19:41:41','2012-06-03 19:41:41');

/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` text COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;

INSERT INTO `posts` (`id`, `body`, `user_id`, `created_at`, `updated_at`)
VALUES
	(1,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur et urna id massa aliquam ultrices. Vivamus porttitor fringilla scelerisque. Curabitur vel nulla turpis, et ornare neque. Sed sit amet tincidunt sem. Nam consectetur, nunc sit amet tincidunt dictum, dolor risus ullamcorper metus, sed pretium diam felis a dolor.',27,'2012-06-03 00:08:16','2012-06-03 00:08:16'),
	(2,'First post...',42,'2012-06-03 03:12:40','2012-06-03 03:12:40'),
	(5,'Second post...',42,'2012-06-03 03:15:26','2012-06-03 03:15:26'),
	(6,'This is a post using AJAX to test the user status update functionality! I think is all OK! ',42,'2012-06-03 03:17:30','2012-06-03 03:17:30'),
	(7,'First post from Carla!',27,'2012-06-03 03:19:25','2012-06-03 03:19:25'),
	(8,'It\'s my first update!',14,'2012-06-03 19:18:36','2012-06-03 19:18:36'),
	(9,'Hi from Bruno.',18,'2012-06-03 19:33:32','2012-06-03 19:33:32'),
	(10,'Bruno, it\'s my first post!',31,'2012-06-03 19:35:06','2012-06-03 19:35:06'),
	(11,'Bruno, it\'s my second post!',31,'2012-06-03 19:35:39','2012-06-03 19:35:39'),
	(12,'Hi again!',14,'2012-06-03 19:39:31','2012-06-03 19:39:31'),
	(13,'Good day people!',14,'2012-06-03 19:39:41','2012-06-03 19:39:41'),
	(14,'Hello! everyone!',42,'2012-06-03 19:40:19','2012-06-03 19:40:19'),
	(15,'Hi people!',27,'2012-06-03 19:41:09','2012-06-03 19:41:09'),
	(16,'Hi everyone!',42,'2012-06-04 12:28:01','2012-06-04 12:28:01');

/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table schema_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;

INSERT INTO `schema_migrations` (`version`)
VALUES
	('20120418004634'),
	('20120423235604'),
	('20120602165456'),
	('20120602203343'),
	('20120603023141'),
	('20120603172006');

/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_file_size` int(11) DEFAULT NULL,
  `avatar_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`, `name`, `avatar_file_name`, `avatar_content_type`, `avatar_file_size`, `avatar_updated_at`)
VALUES
	(3,'joao@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,5,'2012-06-03 19:03:01','2012-05-22 00:01:33','127.0.0.1','127.0.0.1','2012-04-23 22:51:55','2012-06-03 19:03:17','João Silvestre','h.jpg','image/jpeg',57405,'2012-06-03 19:03:17'),
	(4,'maria@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,3,'2012-06-03 19:08:57','2012-04-24 00:17:39','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-06-03 19:09:11','Maria Gadu','ju_arantes_1.jpg','image/jpeg',59859,'2012-06-03 19:09:11'),
	(5,'flavio@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,3,'2012-06-03 19:00:30','2012-04-24 00:17:39','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-06-03 19:01:19','Flávio Soares','fotos-gustavo-zagueiro-cartolafc-37840-300x300.jpg','image/jpeg',10092,'2012-06-03 19:01:19'),
	(6,'henrique@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,3,'2012-06-03 19:02:21','2012-04-24 00:17:39','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-06-03 19:02:30','Henrique Santos','gustavo-valezzi-zagueiro-do-bragantino-faleceu-vitima-de-cancer-1322484191261_300x300.jpg','image/jpeg',43020,'2012-06-03 19:02:30'),
	(7,'jose@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,3,'2012-06-03 19:03:27','2012-04-24 00:17:39','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-06-03 19:03:38','José Silva','h2.jpg','image/jpeg',26051,'2012-06-03 19:03:38'),
	(8,'juliana@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,3,'2012-06-03 19:03:49','2012-04-24 00:17:39','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-06-03 19:04:33','Juliana Santos','Fabiana_Del_Padre_Tome__769.jpeg','image/jpeg',17040,'2012-06-03 19:04:33'),
	(9,'karen@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,3,'2012-06-03 19:06:55','2012-04-24 00:17:39','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-06-03 19:07:08','Karen Grossi','550876_348935978507376_100001729295002_854890_1121132559_n.jpg','image/jpeg',33541,'2012-06-03 19:07:08'),
	(10,'joana@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,3,'2012-06-03 19:02:39','2012-04-24 00:17:39','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-06-03 19:02:52','Joana Vasconcelos','1274505667250_f.jpg','image/jpeg',44092,'2012-06-03 19:02:52'),
	(11,'mauricio@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,3,'2012-06-03 19:09:42','2012-04-24 00:17:39','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-06-03 19:09:57','Maurício Ricardo','h6.jpg','image/jpeg',28128,'2012-06-03 19:09:56'),
	(12,'fabio@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,3,'2012-06-03 18:59:48','2012-04-24 00:17:39','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-06-03 18:59:59','Fábio Assunção','carlos-saldanha-divulga-seu-filme-rio-em-los-angeles-california-28012011-1301948988830_300x300.jpg','image/jpeg',35736,'2012-06-03 18:59:59'),
	(13,'catarina@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,3,'2012-06-03 18:55:41','2012-04-24 00:17:39','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-06-03 18:55:51','Catarina Beat','1306511_300.jpg','image/jpeg',21054,'2012-06-03 18:55:51'),
	(14,'carolina@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,5,'2012-06-03 19:39:26','2012-06-03 19:18:02','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-06-03 19:39:26','Carolina Bagno','555427_300.jpg','image/jpeg',59985,'2012-06-03 18:55:24'),
	(15,'paulo@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,3,'2012-06-03 19:10:05','2012-04-24 00:17:39','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-06-03 19:10:16','Paulo Ricardo','h7.jpeg','image/jpeg',13902,'2012-06-03 19:10:16'),
	(16,'wellington@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,2,'2012-04-24 00:17:39','2012-04-24 00:07:13','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-04-24 00:17:39','Wellington Camargos',NULL,NULL,NULL,NULL),
	(17,'victor@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,2,'2012-04-24 00:17:39','2012-04-24 00:07:13','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-04-24 00:17:39','Victor Bok',NULL,NULL,NULL,NULL),
	(18,'bruno@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,4,'2012-06-03 19:33:13','2012-06-03 18:54:16','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-06-03 19:33:13','Bruno Perdigão','14.jpg','image/jpeg',9482,'2012-06-03 18:54:26'),
	(19,'guilherme@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,3,'2012-06-03 19:01:58','2012-04-24 00:17:39','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-06-03 19:02:10','Guilherme Zoba','fotos-gustavo-zagueiro-cartolafc-72397-300x300.jpg','image/jpeg',8466,'2012-06-03 19:02:09'),
	(20,'giovana@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,3,'2012-06-03 19:01:34','2012-04-24 00:17:39','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-06-03 19:01:45','Giovana Antonelli','3318212_300.jpg','image/jpeg',16172,'2012-06-03 19:01:45'),
	(21,'matias@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,3,'2012-06-03 19:09:22','2012-04-24 00:17:39','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-06-03 19:09:33','Matias Barbosa','h5.jpeg','image/jpeg',27472,'2012-06-03 19:09:33'),
	(22,'simon@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,2,'2012-04-24 00:17:39','2012-04-24 00:07:13','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-04-24 00:17:39','Simon Wagntraub',NULL,NULL,NULL,NULL),
	(23,'rubens@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,3,'2012-06-03 19:12:01','2012-04-24 00:17:39','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-06-03 19:12:15','Rubens Barichello','h11.jpg','image/jpeg',19185,'2012-06-03 19:12:15'),
	(24,'cristian@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,3,'2012-06-03 18:59:11','2012-04-24 00:17:39','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-06-03 18:59:28','Cristian Tunes','carlos_madrid_web.jpg','image/jpeg',70952,'2012-06-03 18:59:28'),
	(25,'felipe@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,3,'2012-06-03 19:00:10','2012-04-24 00:17:39','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-06-03 19:00:21','Felipe Schied','CDN.jpg','image/jpeg',6632,'2012-06-03 19:00:21'),
	(26,'roberto@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,3,'2012-06-03 19:11:20','2012-04-24 00:17:39','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-06-03 19:11:35','Roberto Carlos','h9.jpg','image/jpeg',27113,'2012-06-03 19:11:34'),
	(27,'carla@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,5,'2012-06-03 19:41:05','2012-06-03 18:54:49','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-06-03 19:41:05','Carla Maraisa','526758_300.jpg','image/jpeg',27641,'2012-06-03 18:54:59'),
	(28,'karina@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,2,'2012-04-24 00:17:39','2012-04-24 00:07:13','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-04-24 00:17:39','Karina Boechat',NULL,NULL,NULL,NULL),
	(29,'ronaldo@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,3,'2012-06-03 19:11:42','2012-04-24 00:17:39','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-06-03 19:11:52','Ronaldo Dolabella','h10.jpg','image/jpeg',36021,'2012-06-03 19:11:52'),
	(30,'tales@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,2,'2012-04-24 00:17:39','2012-04-24 00:07:13','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-04-24 00:17:39','Tales Abrantes',NULL,NULL,NULL,NULL),
	(31,'andressa@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,4,'2012-06-03 19:34:56','2012-06-03 18:53:41','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-06-03 19:34:56','Andressa Silva','228146_300.jpg','image/jpeg',15607,'2012-06-03 18:54:01'),
	(32,'leonardo@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,3,'2012-06-03 19:08:09','2012-04-24 00:17:39','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-06-03 19:08:21','Leonardo Rincão','h4.jpg','image/jpeg',16830,'2012-06-03 19:08:21'),
	(33,'leandro@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,3,'2012-06-03 19:07:47','2012-04-24 00:17:39','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-06-03 19:07:59','Leandro Barbosa','h3.jpg','image/jpeg',21231,'2012-06-03 19:07:59'),
	(34,'laura@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,3,'2012-06-03 19:07:18','2012-04-24 00:17:39','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-06-03 19:07:38','Laura Stefanelli','image.png','image/png',63720,'2012-06-03 19:07:37'),
	(35,'leticia@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,3,'2012-06-03 19:08:33','2012-04-24 00:17:39','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-06-03 19:08:48','Letícia Mansur','Joana-Limaverde-9.jpg','image/jpeg',32040,'2012-06-03 19:08:48'),
	(36,'tamara@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,3,'2012-06-03 19:13:10','2012-04-24 00:17:39','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-06-03 19:13:21','Tâmara Bicalho','juliana-ribeiro.jpg','image/jpeg',67699,'2012-06-03 19:13:21'),
	(37,'rafaela@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,3,'2012-06-03 19:10:50','2012-04-24 00:17:39','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-06-03 19:11:11','Rafaela Gomes','juliana-noronha-gola-com-apliques-1338003104198_300x300.jpg','image/jpeg',29787,'2012-06-03 19:11:11'),
	(38,'rafael@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,3,'2012-06-03 19:10:28','2012-04-24 00:17:39','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-06-03 19:10:41','Rafael Soares','h8.png','image/png',63487,'2012-06-03 19:10:41'),
	(39,'tiago@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,2,'2012-04-24 00:17:39','2012-04-24 00:07:13','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-04-24 00:17:39','Tiago Buschinelli',NULL,NULL,NULL,NULL),
	(40,'saulo@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,3,'2012-06-03 19:12:25','2012-04-24 00:17:39','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-06-03 19:12:36','Saulo Gomes','h12.jpg','image/jpeg',35112,'2012-06-03 19:12:36'),
	(41,'silas@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,3,'2012-06-03 19:12:44','2012-04-24 00:17:39','127.0.0.1','127.0.0.1','2012-04-24 00:07:13','2012-06-03 19:12:44','Silas Prado',NULL,NULL,NULL,NULL),
	(42,'junior@gmail.com','$2a$10$cgYpJ2OoUr0E7Wp0zSHZpuwWiht3mgiGnHUuJ5.lyFtSM1Zp3ighu',NULL,NULL,NULL,9,'2012-06-04 12:27:10','2012-06-03 19:40:10','127.0.0.1','127.0.0.1','2012-06-03 02:03:27','2012-06-04 12:27:10','Junior Grossi','avatar.jpg','image/jpeg',91658,'2012-06-03 17:36:55');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
