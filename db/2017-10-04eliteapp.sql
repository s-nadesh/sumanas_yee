/*
SQLyog Ultimate v8.55 
MySQL - 5.5.5-10.1.19-MariaDB : Database - elite_app
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `el_carts` */

DROP TABLE IF EXISTS `el_carts`;

CREATE TABLE `el_carts` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `ordered_by` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `created_at` int(11) DEFAULT '0',
  `updated_at` int(11) DEFAULT '0',
  `created_by` int(11) DEFAULT '0',
  `updated_by` int(11) DEFAULT '0',
  `deleted_at` int(11) DEFAULT '0',
  PRIMARY KEY (`cart_id`),
  KEY `idx-carts-ordered_by` (`ordered_by`),
  KEY `idx-carts-user_id` (`user_id`),
  KEY `idx-carts-product_id` (`product_id`),
  CONSTRAINT `fk-carts-ordered_by` FOREIGN KEY (`ordered_by`) REFERENCES `el_users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `fk-carts-product_id` FOREIGN KEY (`product_id`) REFERENCES `el_products` (`product_id`) ON DELETE CASCADE,
  CONSTRAINT `fk-carts-user_id` FOREIGN KEY (`user_id`) REFERENCES `el_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `el_carts` */

/*Table structure for table `el_categories` */

DROP TABLE IF EXISTS `el_categories`;

CREATE TABLE `el_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `created_at` int(11) DEFAULT '0',
  `updated_at` int(11) DEFAULT '0',
  `created_by` int(11) DEFAULT '0',
  `updated_by` int(11) DEFAULT '0',
  `deleted_at` int(11) DEFAULT '0',
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_name` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `el_categories` */

insert  into `el_categories`(`category_id`,`category_name`,`status`,`created_at`,`updated_at`,`created_by`,`updated_by`,`deleted_at`) values (1,'cement',1,1509371823,1509371823,0,0,0),(2,'rice',1,1509425493,1509425493,0,0,0),(3,'oil',1,1509544199,1509544199,1,1,0),(5,'gold',1,1509606621,1509606621,1,1,1);

/*Table structure for table `el_internal_codes` */

DROP TABLE IF EXISTS `el_internal_codes`;

CREATE TABLE `el_internal_codes` (
  `internal_code_id` int(11) NOT NULL AUTO_INCREMENT,
  `code_type` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `code_prefix` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `code` int(11) NOT NULL,
  `code_padding` smallint(6) NOT NULL DEFAULT '7',
  `status` smallint(6) NOT NULL DEFAULT '1',
  `created_at` int(11) DEFAULT '0',
  `updated_at` int(11) DEFAULT '0',
  `created_by` int(11) DEFAULT '0',
  `updated_by` int(11) DEFAULT '0',
  `deleted_at` int(11) DEFAULT '0',
  PRIMARY KEY (`internal_code_id`),
  UNIQUE KEY `code_type` (`code_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `el_internal_codes` */

insert  into `el_internal_codes`(`internal_code_id`,`code_type`,`code_prefix`,`code`,`code_padding`,`status`,`created_at`,`updated_at`,`created_by`,`updated_by`,`deleted_at`) values (1,'O','OR',13,7,1,0,0,0,0,0);

/*Table structure for table `el_logins` */

DROP TABLE IF EXISTS `el_logins`;

CREATE TABLE `el_logins` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `created_at` int(11) DEFAULT '0',
  `updated_at` int(11) DEFAULT '0',
  `created_by` int(11) DEFAULT '0',
  `updated_by` int(11) DEFAULT '0',
  `deleted_at` int(11) DEFAULT '0',
  PRIMARY KEY (`login_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`),
  KEY `idx-logins-user_id` (`user_id`),
  CONSTRAINT `fk-logins-user_id` FOREIGN KEY (`user_id`) REFERENCES `el_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `el_logins` */

insert  into `el_logins`(`login_id`,`user_id`,`username`,`auth_key`,`password_hash`,`password_reset_token`,`email`,`status`,`created_at`,`updated_at`,`created_by`,`updated_by`,`deleted_at`) values (1,1,'admin','UrkcrjINfapGyQ08ZDVSALvr93MRfGCc','$2y$13$Gj2KhuT3sASdkNCoWPsQDuPPMGg0o05wcrs2hlLYxaYErhV6wUd.K',NULL,'admin@gmail.com',1,0,1509360071,0,1,0),(4,4,'user12','zMiz2nMjP0snQOcYYI7sPSMv1_alAZcB','$2y$13$cAd0KePwwzuWwhCgxGneTe46x6Nfdzr/25rixuOTf8VZXx0awAZ06',NULL,'user@gmail.com',1,1509370471,1509521645,1,1,0);

/*Table structure for table `el_migration` */

DROP TABLE IF EXISTS `el_migration`;

CREATE TABLE `el_migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `el_migration` */

insert  into `el_migration`(`version`,`apply_time`) values ('m000000_000000_base',1508477835),('m130524_201442_init',1508477839),('m171019_101858_create_user_types_table',1509188803),('m171019_131329_create_users_table',1509188805),('m171019_133736_create_logins_table',1509188807),('m171025_093515_create_categories_table',1509188807),('m171025_094010_create_sub_categories_table',1509188810),('m171027_125511_create_products_table',1509188814),('m171030_115415_create_order_status_table',1509458450),('m171030_115416_create_orders_table',1509458458),('m171030_121917_create_order_items_table',1509458465),('m171030_123729_create_order_billings_table',1509458467),('m171031_100420_create_internal_codes_table',1509458468),('m171031_105916_create_carts_table',1509458471),('m171031_134742_create_stock_log_table',1509458473),('m171102_092646_create_order_track_table',1509779223);

/*Table structure for table `el_order_billings` */

DROP TABLE IF EXISTS `el_order_billings`;

CREATE TABLE `el_order_billings` (
  `billing_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `paid_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `status` smallint(6) NOT NULL DEFAULT '1',
  `created_at` int(11) DEFAULT '0',
  `updated_at` int(11) DEFAULT '0',
  `created_by` int(11) DEFAULT '0',
  `updated_by` int(11) DEFAULT '0',
  `deleted_at` int(11) DEFAULT '0',
  PRIMARY KEY (`billing_id`),
  KEY `idx-order_billings-order_id` (`order_id`),
  CONSTRAINT `fk-order_billings-order_id` FOREIGN KEY (`order_id`) REFERENCES `el_orders` (`order_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `el_order_billings` */

insert  into `el_order_billings`(`billing_id`,`order_id`,`paid_amount`,`status`,`created_at`,`updated_at`,`created_by`,`updated_by`,`deleted_at`) values (1,5,'500.00',1,0,0,0,0,0),(2,13,'500.00',1,0,0,0,0,0),(3,5,'200.00',1,0,0,0,0,0),(4,13,'200.00',1,0,0,0,0,0),(6,5,'100.00',1,0,0,0,0,0),(7,5,'20.00',1,0,0,0,0,0),(8,5,'10.00',1,0,0,0,0,0),(9,5,'20.00',1,0,0,0,0,0),(10,13,'10.00',1,0,0,0,0,0),(11,5,'10.00',1,0,0,0,0,0),(12,5,'10.00',1,0,0,6,0,0),(13,5,'30.00',1,0,0,6,0,0),(14,13,'10.00',1,0,0,7,0,0),(15,13,'10.00',1,0,0,7,0,0),(16,5,'20.00',1,0,0,6,0,0),(17,5,'10.00',1,0,0,6,0,0),(18,5,'10.00',1,0,0,6,0,0),(19,5,'10.00',1,0,0,6,0,0),(20,5,'10.00',1,0,0,6,0,0),(21,5,'10.00',1,0,0,6,0,0),(22,5,'10.00',1,0,0,6,0,0),(23,5,'10.00',1,0,0,6,0,0),(24,5,'10.00',1,0,0,6,0,0),(25,5,'10.00',1,0,0,6,0,0),(26,5,'10.00',1,0,0,6,0,0),(27,5,'10.00',1,0,0,6,0,0),(28,5,'10.00',1,0,0,6,0,0),(29,5,'10.00',1,0,0,6,0,0),(30,5,'10.00',1,0,0,6,0,0),(31,5,'40.00',1,0,0,6,0,0),(32,13,'70.00',1,0,0,7,0,0),(33,13,'20.00',1,0,0,7,0,0),(34,13,'20.00',1,0,0,7,0,0),(35,13,'20.00',1,0,0,7,0,0),(36,13,'40.00',1,0,0,7,0,0),(37,14,'100.00',1,0,0,7,0,0),(38,14,'2100.00',1,0,0,0,0,0);

/*Table structure for table `el_order_items` */

DROP TABLE IF EXISTS `el_order_items`;

CREATE TABLE `el_order_items` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcat_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `subcat_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `product_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `created_at` int(11) DEFAULT '0',
  `updated_at` int(11) DEFAULT '0',
  `created_by` int(11) DEFAULT '0',
  `updated_by` int(11) DEFAULT '0',
  `deleted_at` int(11) DEFAULT '0',
  PRIMARY KEY (`item_id`),
  KEY `idx-order_items-subcat_id` (`subcat_id`),
  KEY `idx-order_items-order_id` (`order_id`),
  KEY `idx-order_items-category_id` (`category_id`),
  KEY `idx-order_items-product_id` (`product_id`),
  CONSTRAINT `fk-order_items-category_id` FOREIGN KEY (`category_id`) REFERENCES `el_categories` (`category_id`),
  CONSTRAINT `fk-order_items-order_id` FOREIGN KEY (`order_id`) REFERENCES `el_orders` (`order_id`) ON DELETE CASCADE,
  CONSTRAINT `fk-order_items-product_id` FOREIGN KEY (`product_id`) REFERENCES `el_products` (`product_id`),
  CONSTRAINT `fk-order_items-subcat_id` FOREIGN KEY (`subcat_id`) REFERENCES `el_sub_categories` (`subcat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `el_order_items` */

insert  into `el_order_items`(`item_id`,`order_id`,`category_id`,`subcat_id`,`product_id`,`category_name`,`subcat_name`,`product_name`,`quantity`,`price`,`total`,`status`,`created_at`,`updated_at`,`created_by`,`updated_by`,`deleted_at`) values (4,5,1,1,1,'cement','cement1','cement',5,'100.00','500.00',1,0,0,0,0,0),(5,5,2,2,3,'rice','basmati','jdsad',6,'100.00','600.00',1,0,0,0,0,0),(9,13,1,1,1,'cement','cement1','cement',9,'100.00','900.00',1,0,0,0,0,0),(10,14,3,3,4,'oil','oil1','gold winner',6,'200.00','1200.00',1,0,0,0,0,0),(11,14,2,2,2,'rice','basmati','rice 1',5,'200.00','1000.00',1,0,0,0,0,0);

/*Table structure for table `el_order_status` */

DROP TABLE IF EXISTS `el_order_status`;

CREATE TABLE `el_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_position_id` int(11) NOT NULL DEFAULT '0',
  `status_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `created_at` int(11) DEFAULT '0',
  `updated_at` int(11) DEFAULT '0',
  `created_by` int(11) DEFAULT '0',
  `updated_by` int(11) DEFAULT '0',
  `deleted_at` int(11) DEFAULT '0',
  PRIMARY KEY (`order_status_id`),
  UNIQUE KEY `status_name` (`status_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `el_order_status` */

insert  into `el_order_status`(`order_status_id`,`status_position_id`,`status_name`,`status`,`created_at`,`updated_at`,`created_by`,`updated_by`,`deleted_at`) values (1,1,'New Order',1,0,0,0,0,0),(2,2,'In Progress',1,0,0,0,0,0),(3,3,'Completed',1,0,0,0,0,0),(4,4,'Dispatched',1,0,0,0,0,0),(5,5,'Delivered',1,0,0,0,0,0),(6,6,'Canceled',1,0,0,0,0,0);

/*Table structure for table `el_order_track` */

DROP TABLE IF EXISTS `el_order_track`;

CREATE TABLE `el_order_track` (
  `order_track_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `created_at` int(11) DEFAULT '0',
  `updated_at` int(11) DEFAULT '0',
  `created_by` int(11) DEFAULT '0',
  `updated_by` int(11) DEFAULT '0',
  `deleted_at` int(11) DEFAULT '0',
  PRIMARY KEY (`order_track_id`),
  KEY `idx-order_track-order_status_id` (`order_status_id`),
  KEY `idx-order_track-order_id` (`order_id`),
  CONSTRAINT `fk-order_track-order_id` FOREIGN KEY (`order_id`) REFERENCES `el_orders` (`order_id`) ON DELETE CASCADE,
  CONSTRAINT `fk-order_track-order_status_id` FOREIGN KEY (`order_status_id`) REFERENCES `el_order_status` (`order_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `el_order_track` */

insert  into `el_order_track`(`order_track_id`,`order_id`,`order_status_id`,`value`,`status`,`created_at`,`updated_at`,`created_by`,`updated_by`,`deleted_at`) values (10,13,1,NULL,1,0,0,0,0,0),(14,5,2,'[]',1,0,0,0,0,0),(15,5,4,'{\"dispatch_track_id\":\"456465\",\"dispatch_courier_comapny\":\"fast track\",\"dispatch_comment\":\"Addr\"}',1,0,0,0,0,0),(16,5,5,'{\"deliver_to\":\"hari\",\"deliver_phone\":\"914564651465\",\"deliver_address\":\"Addr\"}',1,0,0,0,0,0),(17,14,1,NULL,1,0,0,0,0,0),(18,13,5,'{\"deliver_to\":\"\",\"deliver_phone\":\"\",\"deliver_address\":\"\",\"deliver_date\":null}',1,0,0,0,0,0);

/*Table structure for table `el_orders` */

DROP TABLE IF EXISTS `el_orders`;

CREATE TABLE `el_orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `invoice_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `ordered_by` int(11) NOT NULL,
  `items_total_amount` decimal(10,2) NOT NULL,
  `tax_percentage` decimal(10,2) DEFAULT '0.00',
  `tax_amount` decimal(10,2) DEFAULT '0.00',
  `total_amount` decimal(10,2) NOT NULL,
  `payment_status` enum('P','C','PC') COLLATE utf8_unicode_ci DEFAULT 'P',
  `signature` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `created_at` int(11) DEFAULT '0',
  `updated_at` int(11) DEFAULT '0',
  `created_by` int(11) DEFAULT '0',
  `updated_by` int(11) DEFAULT '0',
  `deleted_at` int(11) DEFAULT '0',
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `invoice_no` (`invoice_no`),
  KEY `idx-orders-user_id` (`user_id`),
  KEY `idx-orders-ordered_by` (`ordered_by`),
  KEY `idx-orders-order_status_id` (`order_status_id`),
  CONSTRAINT `fk-orders-order_status_id` FOREIGN KEY (`order_status_id`) REFERENCES `el_order_status` (`order_status_id`) ON DELETE CASCADE,
  CONSTRAINT `fk-orders-ordered_by` FOREIGN KEY (`ordered_by`) REFERENCES `el_users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `fk-orders-user_id` FOREIGN KEY (`user_id`) REFERENCES `el_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `el_orders` */

insert  into `el_orders`(`order_id`,`invoice_no`,`invoice_date`,`user_id`,`order_status_id`,`ordered_by`,`items_total_amount`,`tax_percentage`,`tax_amount`,`total_amount`,`payment_status`,`signature`,`status`,`created_at`,`updated_at`,`created_by`,`updated_by`,`deleted_at`) values (5,'OR0000003','2017-11-04 14:11:45',5,3,6,'1100.00','0.00','0.00','1100.00','P',NULL,1,0,0,0,0,0),(13,'OR0000004','2017-11-06 06:11:42',4,3,7,'900.00','0.00','0.00','900.00','P',NULL,1,0,0,0,0,0),(14,'OR0000012','2017-11-06 12:11:24',5,1,7,'2200.00','0.00','0.00','2200.00','P',NULL,1,0,0,0,0,0);

/*Table structure for table `el_products` */

DROP TABLE IF EXISTS `el_products`;

CREATE TABLE `el_products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `subcat_id` int(11) NOT NULL,
  `product_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `min_reorder` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `price_per_unit` decimal(10,2) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `created_at` int(11) DEFAULT '0',
  `updated_at` int(11) DEFAULT '0',
  `created_by` int(11) DEFAULT '0',
  `updated_by` int(11) DEFAULT '0',
  `deleted_at` int(11) DEFAULT '0',
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `idx-products-unique_category_id_subcat_id_product_name` (`category_id`,`subcat_id`,`product_name`),
  KEY `idx-products-category_id` (`category_id`),
  KEY `idx-products-subcat_id` (`subcat_id`),
  CONSTRAINT `fk-products-category_id` FOREIGN KEY (`category_id`) REFERENCES `el_categories` (`category_id`) ON DELETE CASCADE,
  CONSTRAINT `fk-products-subcat_id` FOREIGN KEY (`subcat_id`) REFERENCES `el_sub_categories` (`subcat_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `el_products` */

insert  into `el_products`(`product_id`,`category_id`,`subcat_id`,`product_name`,`min_reorder`,`stock`,`price_per_unit`,`status`,`created_at`,`updated_at`,`created_by`,`updated_by`,`deleted_at`) values (1,1,1,'cement',20,135,'100.00',1,1509372400,1509531261,0,0,0),(2,2,2,'rice 1',10,90,'200.00',1,1509439286,1509538195,0,0,0),(3,2,2,'jdsad',20,60,'100.00',1,1509445503,1509538159,0,0,0),(4,3,3,'gold winner',20,50,'200.00',1,1509544261,1509544261,1,1,0);

/*Table structure for table `el_stock_log` */

DROP TABLE IF EXISTS `el_stock_log`;

CREATE TABLE `el_stock_log` (
  `stocklog_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `adjust_datetime` int(11) NOT NULL,
  `adjust_from` int(11) NOT NULL,
  `adjust_to` int(11) NOT NULL,
  `adjust_quantity` int(11) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `created_at` int(11) DEFAULT '0',
  `updated_at` int(11) DEFAULT '0',
  `created_by` int(11) DEFAULT '0',
  `updated_by` int(11) DEFAULT '0',
  `deleted_at` int(11) DEFAULT '0',
  PRIMARY KEY (`stocklog_id`),
  KEY `idx-stock_log-product_id` (`product_id`),
  CONSTRAINT `fk-stock_log-product_id` FOREIGN KEY (`product_id`) REFERENCES `el_products` (`product_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `el_stock_log` */

insert  into `el_stock_log`(`stocklog_id`,`product_id`,`adjust_datetime`,`adjust_from`,`adjust_to`,`adjust_quantity`,`status`,`created_at`,`updated_at`,`created_by`,`updated_by`,`deleted_at`) values (4,3,0,50,60,10,1,1509538159,1509538159,1,1,0),(5,2,0,80,90,10,1,1509538195,1509538195,1,1,0);

/*Table structure for table `el_sub_categories` */

DROP TABLE IF EXISTS `el_sub_categories`;

CREATE TABLE `el_sub_categories` (
  `subcat_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `subcat_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `created_at` int(11) DEFAULT '0',
  `updated_at` int(11) DEFAULT '0',
  `created_by` int(11) DEFAULT '0',
  `updated_by` int(11) DEFAULT '0',
  `deleted_at` int(11) DEFAULT '0',
  PRIMARY KEY (`subcat_id`),
  UNIQUE KEY `idx-sub_categories-unique_category_id_subcat_name` (`category_id`,`subcat_name`),
  KEY `idx-sub_categories-category_id` (`category_id`),
  CONSTRAINT `fk-sub_categories-category_id` FOREIGN KEY (`category_id`) REFERENCES `el_categories` (`category_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `el_sub_categories` */

insert  into `el_sub_categories`(`subcat_id`,`category_id`,`subcat_name`,`status`,`created_at`,`updated_at`,`created_by`,`updated_by`,`deleted_at`) values (1,1,'cement1',1,1509371898,1509372381,0,0,0),(2,2,'basmati',1,1509425520,1509425520,0,0,0),(3,3,'oil1',1,1509544223,1509544223,1,1,0);

/*Table structure for table `el_user` */

DROP TABLE IF EXISTS `el_user`;

CREATE TABLE `el_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `el_user` */

insert  into `el_user`(`id`,`username`,`auth_key`,`password_hash`,`password_reset_token`,`email`,`status`,`created_at`,`updated_at`) values (1,'test','UrkcrjINfapGyQ08ZDVSALvr93MRfGCc','$2y$13$Gj2KhuT3sASdkNCoWPsQDuPPMGg0o05wcrs2hlLYxaYErhV6wUd.K',NULL,'test@gmail.com',10,1508564295,1508564295),(2,'admin','jVjP_YzBLjwEIGXGTSE15BJvSQN5TUx8','$2y$13$Gj2KhuT3sASdkNCoWPsQDuPPMGg0o05wcrs2hlLYxaYErhV6wUd.K',NULL,'admin@gmail.com',10,1508564389,1508564389);

/*Table structure for table `el_user_types` */

DROP TABLE IF EXISTS `el_user_types`;

CREATE TABLE `el_user_types` (
  `user_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `visible_site` smallint(6) NOT NULL DEFAULT '0',
  `reorder_notify` smallint(6) NOT NULL DEFAULT '0',
  `status` smallint(6) NOT NULL DEFAULT '1',
  `created_at` int(11) DEFAULT '0',
  `updated_at` int(11) DEFAULT '0',
  `created_by` int(11) DEFAULT '0',
  `updated_by` int(11) DEFAULT '0',
  `deleted_at` int(11) DEFAULT '0',
  PRIMARY KEY (`user_type_id`),
  UNIQUE KEY `type_name` (`type_name`),
  UNIQUE KEY `type_code` (`type_code`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `el_user_types` */

insert  into `el_user_types`(`user_type_id`,`type_name`,`type_code`,`visible_site`,`reorder_notify`,`status`,`created_at`,`updated_at`,`created_by`,`updated_by`,`deleted_at`) values (1,'Admin','AD',0,0,1,0,0,0,0,0),(2,'Customer','CU',0,0,1,0,1509440194,0,1,0),(3,'Dealer','DE',0,0,1,0,0,0,0,0),(4,'Sales Executive','SE',0,0,1,0,0,0,0,0),(5,'Billing Executive','BE',0,0,1,0,0,0,0,0),(8,'customer1','CUS',0,0,1,1509347334,1509347334,1,1,0),(9,'Manager','MA',0,0,1,1509544319,1509544319,1,1,1);

/*Table structure for table `el_users` */

DROP TABLE IF EXISTS `el_users`;

CREATE TABLE `el_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `mobile_no` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `created_at` int(11) DEFAULT '0',
  `updated_at` int(11) DEFAULT '0',
  `created_by` int(11) DEFAULT '0',
  `updated_by` int(11) DEFAULT '0',
  `deleted_at` int(11) DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`),
  KEY `idx-users-user_type_id` (`user_type_id`),
  CONSTRAINT `fk-users-user_type_id` FOREIGN KEY (`user_type_id`) REFERENCES `el_user_types` (`user_type_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `el_users` */

insert  into `el_users`(`user_id`,`user_type_id`,`name`,`address`,`mobile_no`,`email`,`status`,`created_at`,`updated_at`,`created_by`,`updated_by`,`deleted_at`) values (1,1,'Admin',NULL,NULL,'admin@gmail.com',1,0,0,0,0,0),(4,2,'user','trt','7874346789','user@gmail.com',1,1509360256,1509360256,1,1,0),(5,2,'test1','sdfhgfhf','45789963','user1@gmail.com',1,1509370585,1509370597,1,1,0),(6,4,'testing','ddr','945465464','testing@gmail.com',1,1509370585,1509370585,1,1,0),(7,4,'Test2','Addr','94545641546','test2@gmail.com',1,1509795127,1509795127,1,1,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
