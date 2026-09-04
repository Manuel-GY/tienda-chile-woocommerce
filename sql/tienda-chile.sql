-- Tabla: wp_actionscheduler_actions
DROP TABLE IF EXISTS `wp_actionscheduler_actions`;
CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `priority` tinyint unsigned NOT NULL DEFAULT '10',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint unsigned NOT NULL DEFAULT '0',
  `attempts` int NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint unsigned NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook_status_scheduled_date_gmt` (`hook`(163),`status`,`scheduled_date_gmt`),
  KEY `status_scheduled_date_gmt` (`status`,`scheduled_date_gmt`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id_status_priority_scheduled_date_gmt` (`claim_id`,`status`,`priority`,`scheduled_date_gmt`),
  KEY `status_last_attempt_gmt` (`status`,`last_attempt_gmt`),
  KEY `status_claim_id` (`status`,`claim_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_actionscheduler_actions` VALUES('6','woocommerce_run_update_callback','complete','2026-09-04 03:41:22','2026-09-04 03:41:22','10','{\"update_callback\":[\"Automattic\\\\WooCommerce\\\\Internal\\\\VariationGallery\\\\Migration\",\"run\"]}','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1788493282;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1788493282;}','1','1','2026-09-04 03:54:36','2026-09-04 03:54:36','1',NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES('7','action_scheduler/migration_hook','complete','2026-09-04 03:42:22','2026-09-04 03:42:22','10','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1788493342;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1788493342;}','2','1','2026-09-04 03:54:36','2026-09-04 03:54:36','1',NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES('8','action_scheduler_run_recurring_actions_schedule_hook','pending','2026-09-05 03:00:00','2026-09-05 03:00:00','20','[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1788577200;s:18:\"\0*\0first_timestamp\";i:1788577200;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1788577200;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}','3','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0',NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES('9','woocommerce_run_product_attribute_lookup_update_callback','complete','2026-09-04 03:55:51','2026-09-04 03:55:51','10','[14,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1788494151;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1788494151;}','1','1','2026-09-04 03:56:02','2026-09-04 03:56:02','4',NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES('10','woocommerce_run_product_attribute_lookup_update_callback','complete','2026-09-04 03:56:42','2026-09-04 03:56:42','10','[15,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1788494202;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1788494202;}','1','1','2026-09-04 03:56:52','2026-09-04 03:56:52','6',NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES('11','woocommerce_run_product_attribute_lookup_update_callback','complete','2026-09-04 03:56:42','2026-09-04 03:56:42','10','[16,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1788494202;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1788494202;}','1','1','2026-09-04 03:56:52','2026-09-04 03:56:52','6',NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES('12','woocommerce_run_product_attribute_lookup_update_callback','complete','2026-09-04 03:56:42','2026-09-04 03:56:42','10','[17,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1788494202;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1788494202;}','1','1','2026-09-04 03:56:52','2026-09-04 03:56:52','6',NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES('13','woocommerce_run_product_attribute_lookup_update_callback','complete','2026-09-04 03:56:42','2026-09-04 03:56:42','10','[18,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1788494202;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1788494202;}','1','1','2026-09-04 03:56:52','2026-09-04 03:56:52','6',NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES('14','woocommerce_run_product_attribute_lookup_update_callback','complete','2026-09-04 03:56:42','2026-09-04 03:56:42','10','[19,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1788494202;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1788494202;}','1','1','2026-09-04 03:56:52','2026-09-04 03:56:52','6',NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES('15','woocommerce_run_product_attribute_lookup_update_callback','complete','2026-09-04 03:56:42','2026-09-04 03:56:42','10','[20,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1788494202;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1788494202;}','1','1','2026-09-04 03:56:52','2026-09-04 03:56:52','6',NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES('16','woocommerce_run_product_attribute_lookup_update_callback','complete','2026-09-04 03:56:42','2026-09-04 03:56:42','10','[21,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1788494202;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1788494202;}','1','1','2026-09-04 03:56:52','2026-09-04 03:56:52','6',NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES('17','woocommerce_run_product_attribute_lookup_update_callback','complete','2026-09-04 03:56:42','2026-09-04 03:56:42','10','[22,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1788494202;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1788494202;}','1','1','2026-09-04 03:56:52','2026-09-04 03:56:52','6',NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES('18','woocommerce_run_product_attribute_lookup_update_callback','complete','2026-09-04 03:56:42','2026-09-04 03:56:42','10','[23,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1788494202;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1788494202;}','1','1','2026-09-04 03:56:52','2026-09-04 03:56:52','6',NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES('19','woocommerce_run_product_attribute_lookup_update_callback','complete','2026-09-04 03:56:42','2026-09-04 03:56:42','10','[24,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1788494202;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1788494202;}','1','1','2026-09-04 03:56:52','2026-09-04 03:56:52','6',NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES('20','woocommerce_run_product_attribute_lookup_update_callback','complete','2026-09-04 03:56:42','2026-09-04 03:56:42','10','[25,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1788494202;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1788494202;}','1','1','2026-09-04 03:56:52','2026-09-04 03:56:52','6',NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES('21','woocommerce_run_product_attribute_lookup_update_callback','complete','2026-09-04 03:56:43','2026-09-04 03:56:43','10','[26,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1788494203;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1788494203;}','1','1','2026-09-04 03:56:52','2026-09-04 03:56:52','6',NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES('22','woocommerce_run_product_attribute_lookup_update_callback','complete','2026-09-04 03:56:43','2026-09-04 03:56:43','10','[27,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1788494203;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1788494203;}','1','1','2026-09-04 03:56:52','2026-09-04 03:56:52','6',NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES('23','woocommerce_run_product_attribute_lookup_update_callback','complete','2026-09-04 03:56:43','2026-09-04 03:56:43','10','[28,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1788494203;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1788494203;}','1','1','2026-09-04 03:56:52','2026-09-04 03:56:52','6',NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES('24','woocommerce_run_product_attribute_lookup_update_callback','complete','2026-09-04 03:56:43','2026-09-04 03:56:43','10','[29,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1788494203;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1788494203;}','1','1','2026-09-04 03:56:52','2026-09-04 03:56:52','6',NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES('25','woocommerce_run_product_attribute_lookup_update_callback','complete','2026-09-04 03:56:43','2026-09-04 03:56:43','10','[30,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1788494203;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1788494203;}','1','1','2026-09-04 03:56:52','2026-09-04 03:56:52','6',NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES('26','woocommerce_run_product_attribute_lookup_update_callback','complete','2026-09-04 03:56:43','2026-09-04 03:56:43','10','[31,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1788494203;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1788494203;}','1','1','2026-09-04 03:56:52','2026-09-04 03:56:52','6',NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES('27','woocommerce_run_product_attribute_lookup_update_callback','complete','2026-09-04 03:56:43','2026-09-04 03:56:43','10','[32,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1788494203;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1788494203;}','1','1','2026-09-04 03:56:52','2026-09-04 03:56:52','6',NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES('28','woocommerce_run_product_attribute_lookup_update_callback','complete','2026-09-04 03:56:43','2026-09-04 03:56:43','10','[33,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1788494203;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1788494203;}','1','1','2026-09-04 03:56:52','2026-09-04 03:56:52','6',NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES('29','woocommerce_run_product_attribute_lookup_update_callback','complete','2026-09-04 03:56:43','2026-09-04 03:56:43','10','[34,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1788494203;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1788494203;}','1','1','2026-09-04 03:56:52','2026-09-04 03:56:52','6',NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES('30','woocommerce_run_product_attribute_lookup_update_callback','complete','2026-09-04 03:56:43','2026-09-04 03:56:43','10','[35,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1788494203;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1788494203;}','1','1','2026-09-04 03:56:52','2026-09-04 03:56:52','6',NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES('31','woocommerce_run_product_attribute_lookup_update_callback','complete','2026-09-04 03:56:43','2026-09-04 03:56:43','10','[36,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1788494203;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1788494203;}','1','1','2026-09-04 03:56:52','2026-09-04 03:56:52','6',NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES('32','woocommerce_run_product_attribute_lookup_update_callback','complete','2026-09-04 03:56:43','2026-09-04 03:56:43','10','[37,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1788494203;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1788494203;}','1','1','2026-09-04 03:56:52','2026-09-04 03:56:52','6',NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES('33','woocommerce_run_product_attribute_lookup_update_callback','complete','2026-09-04 03:56:43','2026-09-04 03:56:43','10','[38,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1788494203;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1788494203;}','1','1','2026-09-04 03:56:52','2026-09-04 03:56:52','6',NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES('34','woocommerce_run_product_attribute_lookup_update_callback','complete','2026-09-04 03:56:43','2026-09-04 03:56:43','10','[39,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1788494203;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1788494203;}','1','1','2026-09-04 03:56:52','2026-09-04 03:56:52','6',NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES('35','woocommerce_run_product_attribute_lookup_update_callback','complete','2026-09-04 03:56:44','2026-09-04 03:56:44','10','[40,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1788494204;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1788494204;}','1','1','2026-09-04 03:56:52','2026-09-04 03:56:52','7',NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES('36','woocommerce_run_product_attribute_lookup_update_callback','complete','2026-09-04 03:56:44','2026-09-04 03:56:44','10','[41,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1788494204;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1788494204;}','1','1','2026-09-04 03:56:52','2026-09-04 03:56:52','7',NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES('37','woocommerce_run_product_attribute_lookup_update_callback','complete','2026-09-04 03:56:44','2026-09-04 03:56:44','10','[42,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1788494204;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1788494204;}','1','1','2026-09-04 03:56:52','2026-09-04 03:56:52','7',NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES('38','woocommerce_run_product_attribute_lookup_update_callback','complete','2026-09-04 03:56:44','2026-09-04 03:56:44','10','[43,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1788494204;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1788494204;}','1','1','2026-09-04 03:56:52','2026-09-04 03:56:52','7',NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES('39','woocommerce_run_product_attribute_lookup_update_callback','complete','2026-09-04 03:56:52','2026-09-04 03:56:52','10','[14,3]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1788494212;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1788494212;}','1','1','2026-09-04 03:56:52','2026-09-04 03:56:52','7',NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES('40','woocommerce_run_product_attribute_lookup_update_callback','pending','2026-09-04 03:56:53','2026-09-04 03:56:53','10','[44,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1788494213;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1788494213;}','1','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0',NULL);

-- Tabla: wp_actionscheduler_claims
DROP TABLE IF EXISTS `wp_actionscheduler_claims`;
CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


-- Tabla: wp_actionscheduler_groups
DROP TABLE IF EXISTS `wp_actionscheduler_groups`;
CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_actionscheduler_groups` VALUES('1','woocommerce-db-updates');
INSERT INTO `wp_actionscheduler_groups` VALUES('2','action-scheduler-migration');
INSERT INTO `wp_actionscheduler_groups` VALUES('3','ActionScheduler');

-- Tabla: wp_actionscheduler_logs
DROP TABLE IF EXISTS `wp_actionscheduler_logs`;
CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_actionscheduler_logs` VALUES('1','6','action created','2026-09-04 03:41:22','2026-09-04 03:41:22');
INSERT INTO `wp_actionscheduler_logs` VALUES('2','7','action created','2026-09-04 03:41:22','2026-09-04 03:41:22');
INSERT INTO `wp_actionscheduler_logs` VALUES('3','8','action created','2026-09-04 03:54:36','2026-09-04 03:54:36');
INSERT INTO `wp_actionscheduler_logs` VALUES('4','6','action started via WP Cron','2026-09-04 03:54:36','2026-09-04 03:54:36');
INSERT INTO `wp_actionscheduler_logs` VALUES('5','6','action complete via WP Cron','2026-09-04 03:54:36','2026-09-04 03:54:36');
INSERT INTO `wp_actionscheduler_logs` VALUES('6','7','action started via WP Cron','2026-09-04 03:54:36','2026-09-04 03:54:36');
INSERT INTO `wp_actionscheduler_logs` VALUES('7','7','action complete via WP Cron','2026-09-04 03:54:36','2026-09-04 03:54:36');
INSERT INTO `wp_actionscheduler_logs` VALUES('8','9','action created','2026-09-04 03:55:50','2026-09-04 03:55:50');
INSERT INTO `wp_actionscheduler_logs` VALUES('9','9','action started via WP Cron','2026-09-04 03:56:02','2026-09-04 03:56:02');
INSERT INTO `wp_actionscheduler_logs` VALUES('10','9','action complete via WP Cron','2026-09-04 03:56:02','2026-09-04 03:56:02');
INSERT INTO `wp_actionscheduler_logs` VALUES('11','10','action created','2026-09-04 03:56:41','2026-09-04 03:56:41');
INSERT INTO `wp_actionscheduler_logs` VALUES('12','11','action created','2026-09-04 03:56:41','2026-09-04 03:56:41');
INSERT INTO `wp_actionscheduler_logs` VALUES('13','12','action created','2026-09-04 03:56:41','2026-09-04 03:56:41');
INSERT INTO `wp_actionscheduler_logs` VALUES('14','13','action created','2026-09-04 03:56:41','2026-09-04 03:56:41');
INSERT INTO `wp_actionscheduler_logs` VALUES('15','14','action created','2026-09-04 03:56:41','2026-09-04 03:56:41');
INSERT INTO `wp_actionscheduler_logs` VALUES('16','15','action created','2026-09-04 03:56:41','2026-09-04 03:56:41');
INSERT INTO `wp_actionscheduler_logs` VALUES('17','16','action created','2026-09-04 03:56:41','2026-09-04 03:56:41');
INSERT INTO `wp_actionscheduler_logs` VALUES('18','17','action created','2026-09-04 03:56:41','2026-09-04 03:56:41');
INSERT INTO `wp_actionscheduler_logs` VALUES('19','18','action created','2026-09-04 03:56:41','2026-09-04 03:56:41');
INSERT INTO `wp_actionscheduler_logs` VALUES('20','19','action created','2026-09-04 03:56:41','2026-09-04 03:56:41');
INSERT INTO `wp_actionscheduler_logs` VALUES('21','20','action created','2026-09-04 03:56:41','2026-09-04 03:56:41');
INSERT INTO `wp_actionscheduler_logs` VALUES('22','21','action created','2026-09-04 03:56:42','2026-09-04 03:56:42');
INSERT INTO `wp_actionscheduler_logs` VALUES('23','22','action created','2026-09-04 03:56:42','2026-09-04 03:56:42');
INSERT INTO `wp_actionscheduler_logs` VALUES('24','23','action created','2026-09-04 03:56:42','2026-09-04 03:56:42');
INSERT INTO `wp_actionscheduler_logs` VALUES('25','24','action created','2026-09-04 03:56:42','2026-09-04 03:56:42');
INSERT INTO `wp_actionscheduler_logs` VALUES('26','25','action created','2026-09-04 03:56:42','2026-09-04 03:56:42');
INSERT INTO `wp_actionscheduler_logs` VALUES('27','26','action created','2026-09-04 03:56:42','2026-09-04 03:56:42');
INSERT INTO `wp_actionscheduler_logs` VALUES('28','27','action created','2026-09-04 03:56:42','2026-09-04 03:56:42');
INSERT INTO `wp_actionscheduler_logs` VALUES('29','28','action created','2026-09-04 03:56:42','2026-09-04 03:56:42');
INSERT INTO `wp_actionscheduler_logs` VALUES('30','29','action created','2026-09-04 03:56:42','2026-09-04 03:56:42');
INSERT INTO `wp_actionscheduler_logs` VALUES('31','30','action created','2026-09-04 03:56:42','2026-09-04 03:56:42');
INSERT INTO `wp_actionscheduler_logs` VALUES('32','31','action created','2026-09-04 03:56:42','2026-09-04 03:56:42');
INSERT INTO `wp_actionscheduler_logs` VALUES('33','32','action created','2026-09-04 03:56:42','2026-09-04 03:56:42');
INSERT INTO `wp_actionscheduler_logs` VALUES('34','33','action created','2026-09-04 03:56:42','2026-09-04 03:56:42');
INSERT INTO `wp_actionscheduler_logs` VALUES('35','34','action created','2026-09-04 03:56:42','2026-09-04 03:56:42');
INSERT INTO `wp_actionscheduler_logs` VALUES('36','35','action created','2026-09-04 03:56:43','2026-09-04 03:56:43');
INSERT INTO `wp_actionscheduler_logs` VALUES('37','36','action created','2026-09-04 03:56:43','2026-09-04 03:56:43');
INSERT INTO `wp_actionscheduler_logs` VALUES('38','37','action created','2026-09-04 03:56:43','2026-09-04 03:56:43');
INSERT INTO `wp_actionscheduler_logs` VALUES('39','38','action created','2026-09-04 03:56:43','2026-09-04 03:56:43');
INSERT INTO `wp_actionscheduler_logs` VALUES('40','39','action created','2026-09-04 03:56:51','2026-09-04 03:56:51');
INSERT INTO `wp_actionscheduler_logs` VALUES('41','40','action created','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('42','10','action started via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('43','10','action complete via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('44','11','action started via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('45','11','action complete via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('46','12','action started via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('47','12','action complete via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('48','13','action started via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('49','13','action complete via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('50','14','action started via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('51','14','action complete via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('52','15','action started via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('53','15','action complete via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('54','16','action started via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('55','16','action complete via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('56','17','action started via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('57','17','action complete via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('58','18','action started via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('59','18','action complete via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('60','19','action started via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('61','19','action complete via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('62','20','action started via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('63','20','action complete via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('64','21','action started via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('65','21','action complete via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('66','22','action started via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('67','22','action complete via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('68','23','action started via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('69','23','action complete via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('70','24','action started via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('71','24','action complete via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('72','25','action started via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('73','25','action complete via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('74','26','action started via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('75','26','action complete via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('76','27','action started via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('77','27','action complete via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('78','28','action started via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('79','28','action complete via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('80','29','action started via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('81','29','action complete via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('82','30','action started via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('83','30','action complete via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('84','31','action started via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('85','31','action complete via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('86','32','action started via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('87','32','action complete via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('88','33','action started via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('89','33','action complete via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('90','34','action started via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('91','34','action complete via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('92','35','action started via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('93','35','action complete via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('94','36','action started via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('95','36','action complete via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('96','37','action started via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('97','37','action complete via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('98','38','action started via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('99','38','action complete via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('100','39','action started via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');
INSERT INTO `wp_actionscheduler_logs` VALUES('101','39','action complete via WP Cron','2026-09-04 03:56:52','2026-09-04 03:56:52');

-- Tabla: wp_commentmeta
DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


-- Tabla: wp_comments
DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`),
  KEY `woo_idx_comment_date_type` (`comment_date_gmt`,`comment_type`,`comment_approved`,`comment_post_ID`),
  KEY `woo_idx_comment_approved_type` (`comment_approved`,`comment_type`,`comment_post_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_comments` VALUES('1','1','A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2026-09-04 03:30:49','2026-09-04 03:30:49','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com/\">Gravatar</a>.','0','1','','comment','0','0');

-- Tabla: wp_links
DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint unsigned NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


-- Tabla: wp_options
DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=539 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_options` VALUES('1','cron','a:10:{i:1788494272;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1788496249;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1788496251;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1788496882;a:2:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1788498049;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1788499849;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1788579051;a:3:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:41:\"wp_privacy_personal_data_cleanup_requests\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1788579682;a:1:{s:20:\"jetpack_v2_heartbeat\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1789097788;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','on');
INSERT INTO `wp_options` VALUES('2','siteurl','http://127.0.0.1:10004','on');
INSERT INTO `wp_options` VALUES('3','home','http://127.0.0.1:10004','on');
INSERT INTO `wp_options` VALUES('4','blogname','Tienda Chile','on');
INSERT INTO `wp_options` VALUES('5','blogdescription','Tu tienda online','on');
INSERT INTO `wp_options` VALUES('6','users_can_register','0','on');
INSERT INTO `wp_options` VALUES('7','admin_email','tiendappchile@gmail.com','on');
INSERT INTO `wp_options` VALUES('8','start_of_week','1','on');
INSERT INTO `wp_options` VALUES('9','use_balanceTags','0','on');
INSERT INTO `wp_options` VALUES('10','use_smilies','1','on');
INSERT INTO `wp_options` VALUES('11','require_name_email','1','on');
INSERT INTO `wp_options` VALUES('12','comments_notify','1','on');
INSERT INTO `wp_options` VALUES('13','posts_per_rss','10','on');
INSERT INTO `wp_options` VALUES('14','rss_use_excerpt','0','on');
INSERT INTO `wp_options` VALUES('15','mailserver_url','mail.example.com','on');
INSERT INTO `wp_options` VALUES('16','mailserver_login','login@example.com','on');
INSERT INTO `wp_options` VALUES('17','mailserver_pass','','on');
INSERT INTO `wp_options` VALUES('18','mailserver_port','110','on');
INSERT INTO `wp_options` VALUES('19','default_category','1','on');
INSERT INTO `wp_options` VALUES('20','default_comment_status','open','on');
INSERT INTO `wp_options` VALUES('21','default_ping_status','open','on');
INSERT INTO `wp_options` VALUES('22','default_pingback_flag','1','on');
INSERT INTO `wp_options` VALUES('23','posts_per_page','10','on');
INSERT INTO `wp_options` VALUES('24','date_format','F j, Y','on');
INSERT INTO `wp_options` VALUES('25','time_format','g:i a','on');
INSERT INTO `wp_options` VALUES('26','links_updated_date_format','F j, Y g:i a','on');
INSERT INTO `wp_options` VALUES('27','comment_moderation','0','on');
INSERT INTO `wp_options` VALUES('28','moderation_notify','1','on');
INSERT INTO `wp_options` VALUES('29','permalink_structure','/%postname%/','on');
INSERT INTO `wp_options` VALUES('30','rewrite_rules','a:187:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:21:\"^wc/file/transient/?$\";s:33:\"index.php?wc-transient-file-name=\";s:24:\"^wc/file/transient/(.+)$\";s:44:\"index.php?wc-transient-file-name=$matches[1]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:15:\"^checkout-link$\";s:28:\"index.php?checkout-link=true\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:43:\"category/(.+?)/wc/file/transient(/(.*))?/?$\";s:65:\"index.php?category_name=$matches[1]&wc/file/transient=$matches[3]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:40:\"tag/([^/]+)/wc/file/transient(/(.*))?/?$\";s:55:\"index.php?tag=$matches[1]&wc/file/transient=$matches[3]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:44:\"brand/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?product_brand=$matches[1]&feed=$matches[2]\";s:39:\"brand/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?product_brand=$matches[1]&feed=$matches[2]\";s:20:\"brand/(.+?)/embed/?$\";s:46:\"index.php?product_brand=$matches[1]&embed=true\";s:32:\"brand/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?product_brand=$matches[1]&paged=$matches[2]\";s:14:\"brand/(.+?)/?$\";s:35:\"index.php?product_brand=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:44:\"product/([^/]+)/wc/file/transient(/(.*))?/?$\";s:59:\"index.php?product=$matches[1]&wc/file/transient=$matches[3]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/([^/]+)/wc/file/transient(/(.*))?/?$\";s:62:\"index.php?attachment=$matches[1]&wc/file/transient=$matches[3]\";s:61:\"product/[^/]+/attachment/([^/]+)/wc/file/transient(/(.*))?/?$\";s:62:\"index.php?attachment=$matches[1]&wc/file/transient=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:12:\"sitemap\\.xml\";s:23:\"index.php?sitemap=index\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:28:\"wc/file/transient(/(.*))?/?$\";s:40:\"index.php?&wc/file/transient=$matches[2]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:37:\"comments/wc/file/transient(/(.*))?/?$\";s:40:\"index.php?&wc/file/transient=$matches[2]\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:40:\"search/(.+)/wc/file/transient(/(.*))?/?$\";s:53:\"index.php?s=$matches[1]&wc/file/transient=$matches[3]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:43:\"author/([^/]+)/wc/file/transient(/(.*))?/?$\";s:63:\"index.php?author_name=$matches[1]&wc/file/transient=$matches[3]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc/file/transient(/(.*))?/?$\";s:93:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc/file/transient=$matches[5]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:52:\"([0-9]{4})/([0-9]{1,2})/wc/file/transient(/(.*))?/?$\";s:77:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc/file/transient=$matches[4]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:39:\"([0-9]{4})/wc/file/transient(/(.*))?/?$\";s:56:\"index.php?year=$matches[1]&wc/file/transient=$matches[3]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:36:\"(.?.+?)/wc/file/transient(/(.*))?/?$\";s:60:\"index.php?pagename=$matches[1]&wc/file/transient=$matches[3]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:42:\".?.+?/([^/]+)/wc/file/transient(/(.*))?/?$\";s:62:\"index.php?attachment=$matches[1]&wc/file/transient=$matches[3]\";s:53:\".?.+?/attachment/([^/]+)/wc/file/transient(/(.*))?/?$\";s:62:\"index.php?attachment=$matches[1]&wc/file/transient=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:36:\"([^/]+)/wc/file/transient(/(.*))?/?$\";s:56:\"index.php?name=$matches[1]&wc/file/transient=$matches[3]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/([^/]+)/wc/file/transient(/(.*))?/?$\";s:62:\"index.php?attachment=$matches[1]&wc/file/transient=$matches[3]\";s:53:\"[^/]+/attachment/([^/]+)/wc/file/transient(/(.*))?/?$\";s:62:\"index.php?attachment=$matches[1]&wc/file/transient=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','on');
INSERT INTO `wp_options` VALUES('31','hack_file','0','on');
INSERT INTO `wp_options` VALUES('32','blog_charset','UTF-8','on');
INSERT INTO `wp_options` VALUES('33','moderation_keys','','off');
INSERT INTO `wp_options` VALUES('34','active_plugins','a:2:{i:0;s:51:\"hup-kit-ecommerce-chile/hup-kit-ecommerce-chile.php\";i:1;s:27:\"woocommerce/woocommerce.php\";}','on');
INSERT INTO `wp_options` VALUES('35','category_base','','on');
INSERT INTO `wp_options` VALUES('36','ping_sites','https://rpc.pingomatic.com/','on');
INSERT INTO `wp_options` VALUES('37','comment_max_links','2','on');
INSERT INTO `wp_options` VALUES('38','gmt_offset','0','on');
INSERT INTO `wp_options` VALUES('39','default_email_category','1','on');
INSERT INTO `wp_options` VALUES('40','recently_edited','','off');
INSERT INTO `wp_options` VALUES('41','template','storefront','on');
INSERT INTO `wp_options` VALUES('42','stylesheet','storefront','on');
INSERT INTO `wp_options` VALUES('43','comment_registration','0','on');
INSERT INTO `wp_options` VALUES('44','html_type','text/html','on');
INSERT INTO `wp_options` VALUES('45','use_trackback','0','on');
INSERT INTO `wp_options` VALUES('46','default_role','subscriber','on');
INSERT INTO `wp_options` VALUES('47','db_version','61833','on');
INSERT INTO `wp_options` VALUES('48','uploads_use_yearmonth_folders','1','on');
INSERT INTO `wp_options` VALUES('49','upload_path','','on');
INSERT INTO `wp_options` VALUES('50','blog_public','1','on');
INSERT INTO `wp_options` VALUES('51','default_link_category','2','on');
INSERT INTO `wp_options` VALUES('52','show_on_front','posts','on');
INSERT INTO `wp_options` VALUES('53','tag_base','','on');
INSERT INTO `wp_options` VALUES('54','show_avatars','1','on');
INSERT INTO `wp_options` VALUES('55','avatar_rating','G','on');
INSERT INTO `wp_options` VALUES('56','upload_url_path','','on');
INSERT INTO `wp_options` VALUES('57','thumbnail_size_w','150','on');
INSERT INTO `wp_options` VALUES('58','thumbnail_size_h','150','on');
INSERT INTO `wp_options` VALUES('59','thumbnail_crop','1','on');
INSERT INTO `wp_options` VALUES('60','medium_size_w','300','on');
INSERT INTO `wp_options` VALUES('61','medium_size_h','300','on');
INSERT INTO `wp_options` VALUES('62','avatar_default','mystery','on');
INSERT INTO `wp_options` VALUES('63','large_size_w','1024','on');
INSERT INTO `wp_options` VALUES('64','large_size_h','1024','on');
INSERT INTO `wp_options` VALUES('65','image_default_link_type','none','on');
INSERT INTO `wp_options` VALUES('66','image_default_size','','on');
INSERT INTO `wp_options` VALUES('67','image_default_align','','on');
INSERT INTO `wp_options` VALUES('68','close_comments_for_old_posts','0','on');
INSERT INTO `wp_options` VALUES('69','close_comments_days_old','14','on');
INSERT INTO `wp_options` VALUES('70','thread_comments','1','on');
INSERT INTO `wp_options` VALUES('71','thread_comments_depth','5','on');
INSERT INTO `wp_options` VALUES('72','page_comments','0','on');
INSERT INTO `wp_options` VALUES('73','comments_per_page','50','on');
INSERT INTO `wp_options` VALUES('74','default_comments_page','newest','on');
INSERT INTO `wp_options` VALUES('75','comment_order','asc','on');
INSERT INTO `wp_options` VALUES('76','sticky_posts','a:0:{}','on');
INSERT INTO `wp_options` VALUES('77','widget_categories','a:0:{}','on');
INSERT INTO `wp_options` VALUES('78','widget_text','a:0:{}','on');
INSERT INTO `wp_options` VALUES('79','widget_rss','a:0:{}','on');
INSERT INTO `wp_options` VALUES('80','uninstall_plugins','a:0:{}','off');
INSERT INTO `wp_options` VALUES('81','timezone_string','','on');
INSERT INTO `wp_options` VALUES('82','page_for_posts','0','on');
INSERT INTO `wp_options` VALUES('83','page_on_front','0','on');
INSERT INTO `wp_options` VALUES('84','default_post_format','0','on');
INSERT INTO `wp_options` VALUES('85','link_manager_enabled','0','on');
INSERT INTO `wp_options` VALUES('86','finished_splitting_shared_terms','1','on');
INSERT INTO `wp_options` VALUES('87','site_icon','0','on');
INSERT INTO `wp_options` VALUES('88','medium_large_size_w','768','on');
INSERT INTO `wp_options` VALUES('89','medium_large_size_h','0','on');
INSERT INTO `wp_options` VALUES('90','wp_page_for_privacy_policy','3','on');
INSERT INTO `wp_options` VALUES('91','show_comments_cookies_opt_in','1','on');
INSERT INTO `wp_options` VALUES('92','admin_email_lifespan','1804044649','on');
INSERT INTO `wp_options` VALUES('93','disallowed_keys','','off');
INSERT INTO `wp_options` VALUES('94','comment_previously_approved','1','on');
INSERT INTO `wp_options` VALUES('95','auto_plugin_theme_update_emails','a:0:{}','off');
INSERT INTO `wp_options` VALUES('96','auto_update_core_dev','enabled','on');
INSERT INTO `wp_options` VALUES('97','auto_update_core_minor','enabled','on');
INSERT INTO `wp_options` VALUES('98','auto_update_core_major','enabled','on');
INSERT INTO `wp_options` VALUES('99','wp_force_deactivated_plugins','a:0:{}','on');
INSERT INTO `wp_options` VALUES('100','wp_attachment_pages_enabled','0','on');
INSERT INTO `wp_options` VALUES('101','wp_notes_notify','1','on');
INSERT INTO `wp_options` VALUES('102','initial_db_version','61833','on');
INSERT INTO `wp_options` VALUES('103','wp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:115:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:16:\"create_customers\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:93:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:16:\"create_customers\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}','on');
INSERT INTO `wp_options` VALUES('104','fresh_site','1','off');
INSERT INTO `wp_options` VALUES('105','user_count','1','off');
INSERT INTO `wp_options` VALUES('106','widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES('107','sidebars_widgets','a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:13:\"array_version\";i:3;}','auto');
INSERT INTO `wp_options` VALUES('108','widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES('109','widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES('110','widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES('111','widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES('112','widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES('113','widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES('114','widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES('115','widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES('116','widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES('117','widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES('118','widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES('119','widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES('120','widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES('121','widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES('122','_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:3:\"7.1\";s:5:\"files\";a:624:{i:0;s:31:\"accordion-heading/style-rtl.css\";i:1;s:35:\"accordion-heading/style-rtl.min.css\";i:2;s:27:\"accordion-heading/style.css\";i:3;s:31:\"accordion-heading/style.min.css\";i:4;s:28:\"accordion-item/style-rtl.css\";i:5;s:32:\"accordion-item/style-rtl.min.css\";i:6;s:24:\"accordion-item/style.css\";i:7;s:28:\"accordion-item/style.min.css\";i:8;s:29:\"accordion-panel/style-rtl.css\";i:9;s:33:\"accordion-panel/style-rtl.min.css\";i:10;s:25:\"accordion-panel/style.css\";i:11;s:29:\"accordion-panel/style.min.css\";i:12;s:23:\"accordion/style-rtl.css\";i:13;s:27:\"accordion/style-rtl.min.css\";i:14;s:19:\"accordion/style.css\";i:15;s:23:\"accordion/style.min.css\";i:16;s:22:\"archives/style-rtl.css\";i:17;s:26:\"archives/style-rtl.min.css\";i:18;s:18:\"archives/style.css\";i:19;s:22:\"archives/style.min.css\";i:20;s:20:\"audio/editor-rtl.css\";i:21;s:24:\"audio/editor-rtl.min.css\";i:22;s:16:\"audio/editor.css\";i:23;s:20:\"audio/editor.min.css\";i:24;s:19:\"audio/style-rtl.css\";i:25;s:23:\"audio/style-rtl.min.css\";i:26;s:15:\"audio/style.css\";i:27;s:19:\"audio/style.min.css\";i:28;s:19:\"audio/theme-rtl.css\";i:29;s:23:\"audio/theme-rtl.min.css\";i:30;s:15:\"audio/theme.css\";i:31;s:19:\"audio/theme.min.css\";i:32;s:21:\"avatar/editor-rtl.css\";i:33;s:25:\"avatar/editor-rtl.min.css\";i:34;s:17:\"avatar/editor.css\";i:35;s:21:\"avatar/editor.min.css\";i:36;s:20:\"avatar/style-rtl.css\";i:37;s:24:\"avatar/style-rtl.min.css\";i:38;s:16:\"avatar/style.css\";i:39;s:20:\"avatar/style.min.css\";i:40;s:25:\"breadcrumbs/style-rtl.css\";i:41;s:29:\"breadcrumbs/style-rtl.min.css\";i:42;s:21:\"breadcrumbs/style.css\";i:43;s:25:\"breadcrumbs/style.min.css\";i:44;s:21:\"button/editor-rtl.css\";i:45;s:25:\"button/editor-rtl.min.css\";i:46;s:17:\"button/editor.css\";i:47;s:21:\"button/editor.min.css\";i:48;s:20:\"button/style-rtl.css\";i:49;s:24:\"button/style-rtl.min.css\";i:50;s:16:\"button/style.css\";i:51;s:20:\"button/style.min.css\";i:52;s:22:\"buttons/editor-rtl.css\";i:53;s:26:\"buttons/editor-rtl.min.css\";i:54;s:18:\"buttons/editor.css\";i:55;s:22:\"buttons/editor.min.css\";i:56;s:21:\"buttons/style-rtl.css\";i:57;s:25:\"buttons/style-rtl.min.css\";i:58;s:17:\"buttons/style.css\";i:59;s:21:\"buttons/style.min.css\";i:60;s:22:\"calendar/style-rtl.css\";i:61;s:26:\"calendar/style-rtl.min.css\";i:62;s:18:\"calendar/style.css\";i:63;s:22:\"calendar/style.min.css\";i:64;s:25:\"categories/editor-rtl.css\";i:65;s:29:\"categories/editor-rtl.min.css\";i:66;s:21:\"categories/editor.css\";i:67;s:25:\"categories/editor.min.css\";i:68;s:24:\"categories/style-rtl.css\";i:69;s:28:\"categories/style-rtl.min.css\";i:70;s:20:\"categories/style.css\";i:71;s:24:\"categories/style.min.css\";i:72;s:19:\"code/editor-rtl.css\";i:73;s:23:\"code/editor-rtl.min.css\";i:74;s:15:\"code/editor.css\";i:75;s:19:\"code/editor.min.css\";i:76;s:18:\"code/style-rtl.css\";i:77;s:22:\"code/style-rtl.min.css\";i:78;s:14:\"code/style.css\";i:79;s:18:\"code/style.min.css\";i:80;s:18:\"code/theme-rtl.css\";i:81;s:22:\"code/theme-rtl.min.css\";i:82;s:14:\"code/theme.css\";i:83;s:18:\"code/theme.min.css\";i:84;s:22:\"columns/editor-rtl.css\";i:85;s:26:\"columns/editor-rtl.min.css\";i:86;s:18:\"columns/editor.css\";i:87;s:22:\"columns/editor.min.css\";i:88;s:21:\"columns/style-rtl.css\";i:89;s:25:\"columns/style-rtl.min.css\";i:90;s:17:\"columns/style.css\";i:91;s:21:\"columns/style.min.css\";i:92;s:33:\"comment-author-name/style-rtl.css\";i:93;s:37:\"comment-author-name/style-rtl.min.css\";i:94;s:29:\"comment-author-name/style.css\";i:95;s:33:\"comment-author-name/style.min.css\";i:96;s:29:\"comment-content/style-rtl.css\";i:97;s:33:\"comment-content/style-rtl.min.css\";i:98;s:25:\"comment-content/style.css\";i:99;s:29:\"comment-content/style.min.css\";i:100;s:26:\"comment-date/style-rtl.css\";i:101;s:30:\"comment-date/style-rtl.min.css\";i:102;s:22:\"comment-date/style.css\";i:103;s:26:\"comment-date/style.min.css\";i:104;s:31:\"comment-edit-link/style-rtl.css\";i:105;s:35:\"comment-edit-link/style-rtl.min.css\";i:106;s:27:\"comment-edit-link/style.css\";i:107;s:31:\"comment-edit-link/style.min.css\";i:108;s:32:\"comment-reply-link/style-rtl.css\";i:109;s:36:\"comment-reply-link/style-rtl.min.css\";i:110;s:28:\"comment-reply-link/style.css\";i:111;s:32:\"comment-reply-link/style.min.css\";i:112;s:30:\"comment-template/style-rtl.css\";i:113;s:34:\"comment-template/style-rtl.min.css\";i:114;s:26:\"comment-template/style.css\";i:115;s:30:\"comment-template/style.min.css\";i:116;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:117;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:118;s:38:\"comments-pagination-numbers/editor.css\";i:119;s:42:\"comments-pagination-numbers/editor.min.css\";i:120;s:34:\"comments-pagination/editor-rtl.css\";i:121;s:38:\"comments-pagination/editor-rtl.min.css\";i:122;s:30:\"comments-pagination/editor.css\";i:123;s:34:\"comments-pagination/editor.min.css\";i:124;s:33:\"comments-pagination/style-rtl.css\";i:125;s:37:\"comments-pagination/style-rtl.min.css\";i:126;s:29:\"comments-pagination/style.css\";i:127;s:33:\"comments-pagination/style.min.css\";i:128;s:29:\"comments-title/editor-rtl.css\";i:129;s:33:\"comments-title/editor-rtl.min.css\";i:130;s:25:\"comments-title/editor.css\";i:131;s:29:\"comments-title/editor.min.css\";i:132;s:23:\"comments/editor-rtl.css\";i:133;s:27:\"comments/editor-rtl.min.css\";i:134;s:19:\"comments/editor.css\";i:135;s:23:\"comments/editor.min.css\";i:136;s:22:\"comments/style-rtl.css\";i:137;s:26:\"comments/style-rtl.min.css\";i:138;s:18:\"comments/style.css\";i:139;s:22:\"comments/style.min.css\";i:140;s:20:\"cover/editor-rtl.css\";i:141;s:24:\"cover/editor-rtl.min.css\";i:142;s:16:\"cover/editor.css\";i:143;s:20:\"cover/editor.min.css\";i:144;s:19:\"cover/style-rtl.css\";i:145;s:23:\"cover/style-rtl.min.css\";i:146;s:15:\"cover/style.css\";i:147;s:19:\"cover/style.min.css\";i:148;s:22:\"details/editor-rtl.css\";i:149;s:26:\"details/editor-rtl.min.css\";i:150;s:18:\"details/editor.css\";i:151;s:22:\"details/editor.min.css\";i:152;s:21:\"details/style-rtl.css\";i:153;s:25:\"details/style-rtl.min.css\";i:154;s:17:\"details/style.css\";i:155;s:21:\"details/style.min.css\";i:156;s:20:\"embed/editor-rtl.css\";i:157;s:24:\"embed/editor-rtl.min.css\";i:158;s:16:\"embed/editor.css\";i:159;s:20:\"embed/editor.min.css\";i:160;s:19:\"embed/style-rtl.css\";i:161;s:23:\"embed/style-rtl.min.css\";i:162;s:15:\"embed/style.css\";i:163;s:19:\"embed/style.min.css\";i:164;s:19:\"embed/theme-rtl.css\";i:165;s:23:\"embed/theme-rtl.min.css\";i:166;s:15:\"embed/theme.css\";i:167;s:19:\"embed/theme.min.css\";i:168;s:19:\"file/editor-rtl.css\";i:169;s:23:\"file/editor-rtl.min.css\";i:170;s:15:\"file/editor.css\";i:171;s:19:\"file/editor.min.css\";i:172;s:18:\"file/style-rtl.css\";i:173;s:22:\"file/style-rtl.min.css\";i:174;s:14:\"file/style.css\";i:175;s:18:\"file/style.min.css\";i:176;s:23:\"footnotes/style-rtl.css\";i:177;s:27:\"footnotes/style-rtl.min.css\";i:178;s:19:\"footnotes/style.css\";i:179;s:23:\"footnotes/style.min.css\";i:180;s:23:\"freeform/editor-rtl.css\";i:181;s:27:\"freeform/editor-rtl.min.css\";i:182;s:19:\"freeform/editor.css\";i:183;s:23:\"freeform/editor.min.css\";i:184;s:22:\"gallery/editor-rtl.css\";i:185;s:26:\"gallery/editor-rtl.min.css\";i:186;s:18:\"gallery/editor.css\";i:187;s:22:\"gallery/editor.min.css\";i:188;s:21:\"gallery/style-rtl.css\";i:189;s:25:\"gallery/style-rtl.min.css\";i:190;s:17:\"gallery/style.css\";i:191;s:21:\"gallery/style.min.css\";i:192;s:21:\"gallery/theme-rtl.css\";i:193;s:25:\"gallery/theme-rtl.min.css\";i:194;s:17:\"gallery/theme.css\";i:195;s:21:\"gallery/theme.min.css\";i:196;s:20:\"group/editor-rtl.css\";i:197;s:24:\"group/editor-rtl.min.css\";i:198;s:16:\"group/editor.css\";i:199;s:20:\"group/editor.min.css\";i:200;s:19:\"group/style-rtl.css\";i:201;s:23:\"group/style-rtl.min.css\";i:202;s:15:\"group/style.css\";i:203;s:19:\"group/style.min.css\";i:204;s:19:\"group/theme-rtl.css\";i:205;s:23:\"group/theme-rtl.min.css\";i:206;s:15:\"group/theme.css\";i:207;s:19:\"group/theme.min.css\";i:208;s:21:\"heading/style-rtl.css\";i:209;s:25:\"heading/style-rtl.min.css\";i:210;s:17:\"heading/style.css\";i:211;s:21:\"heading/style.min.css\";i:212;s:19:\"html/editor-rtl.css\";i:213;s:23:\"html/editor-rtl.min.css\";i:214;s:15:\"html/editor.css\";i:215;s:19:\"html/editor.min.css\";i:216;s:19:\"icon/editor-rtl.css\";i:217;s:23:\"icon/editor-rtl.min.css\";i:218;s:15:\"icon/editor.css\";i:219;s:19:\"icon/editor.min.css\";i:220;s:18:\"icon/style-rtl.css\";i:221;s:22:\"icon/style-rtl.min.css\";i:222;s:14:\"icon/style.css\";i:223;s:18:\"icon/style.min.css\";i:224;s:20:\"image/editor-rtl.css\";i:225;s:24:\"image/editor-rtl.min.css\";i:226;s:16:\"image/editor.css\";i:227;s:20:\"image/editor.min.css\";i:228;s:19:\"image/style-rtl.css\";i:229;s:23:\"image/style-rtl.min.css\";i:230;s:15:\"image/style.css\";i:231;s:19:\"image/style.min.css\";i:232;s:19:\"image/theme-rtl.css\";i:233;s:23:\"image/theme-rtl.min.css\";i:234;s:15:\"image/theme.css\";i:235;s:19:\"image/theme.min.css\";i:236;s:29:\"latest-comments/style-rtl.css\";i:237;s:33:\"latest-comments/style-rtl.min.css\";i:238;s:25:\"latest-comments/style.css\";i:239;s:29:\"latest-comments/style.min.css\";i:240;s:27:\"latest-posts/editor-rtl.css\";i:241;s:31:\"latest-posts/editor-rtl.min.css\";i:242;s:23:\"latest-posts/editor.css\";i:243;s:27:\"latest-posts/editor.min.css\";i:244;s:26:\"latest-posts/style-rtl.css\";i:245;s:30:\"latest-posts/style-rtl.min.css\";i:246;s:22:\"latest-posts/style.css\";i:247;s:26:\"latest-posts/style.min.css\";i:248;s:18:\"list/style-rtl.css\";i:249;s:22:\"list/style-rtl.min.css\";i:250;s:14:\"list/style.css\";i:251;s:18:\"list/style.min.css\";i:252;s:22:\"loginout/style-rtl.css\";i:253;s:26:\"loginout/style-rtl.min.css\";i:254;s:18:\"loginout/style.css\";i:255;s:22:\"loginout/style.min.css\";i:256;s:19:\"math/editor-rtl.css\";i:257;s:23:\"math/editor-rtl.min.css\";i:258;s:15:\"math/editor.css\";i:259;s:19:\"math/editor.min.css\";i:260;s:18:\"math/style-rtl.css\";i:261;s:22:\"math/style-rtl.min.css\";i:262;s:14:\"math/style.css\";i:263;s:18:\"math/style.min.css\";i:264;s:25:\"media-text/editor-rtl.css\";i:265;s:29:\"media-text/editor-rtl.min.css\";i:266;s:21:\"media-text/editor.css\";i:267;s:25:\"media-text/editor.min.css\";i:268;s:24:\"media-text/style-rtl.css\";i:269;s:28:\"media-text/style-rtl.min.css\";i:270;s:20:\"media-text/style.css\";i:271;s:24:\"media-text/style.min.css\";i:272;s:19:\"more/editor-rtl.css\";i:273;s:23:\"more/editor-rtl.min.css\";i:274;s:15:\"more/editor.css\";i:275;s:19:\"more/editor.min.css\";i:276;s:30:\"navigation-link/editor-rtl.css\";i:277;s:34:\"navigation-link/editor-rtl.min.css\";i:278;s:26:\"navigation-link/editor.css\";i:279;s:30:\"navigation-link/editor.min.css\";i:280;s:29:\"navigation-link/style-rtl.css\";i:281;s:33:\"navigation-link/style-rtl.min.css\";i:282;s:25:\"navigation-link/style.css\";i:283;s:29:\"navigation-link/style.min.css\";i:284;s:38:\"navigation-overlay-close/style-rtl.css\";i:285;s:42:\"navigation-overlay-close/style-rtl.min.css\";i:286;s:34:\"navigation-overlay-close/style.css\";i:287;s:38:\"navigation-overlay-close/style.min.css\";i:288;s:33:\"navigation-submenu/editor-rtl.css\";i:289;s:37:\"navigation-submenu/editor-rtl.min.css\";i:290;s:29:\"navigation-submenu/editor.css\";i:291;s:33:\"navigation-submenu/editor.min.css\";i:292;s:25:\"navigation/editor-rtl.css\";i:293;s:29:\"navigation/editor-rtl.min.css\";i:294;s:21:\"navigation/editor.css\";i:295;s:25:\"navigation/editor.min.css\";i:296;s:24:\"navigation/style-rtl.css\";i:297;s:28:\"navigation/style-rtl.min.css\";i:298;s:20:\"navigation/style.css\";i:299;s:24:\"navigation/style.min.css\";i:300;s:23:\"nextpage/editor-rtl.css\";i:301;s:27:\"nextpage/editor-rtl.min.css\";i:302;s:19:\"nextpage/editor.css\";i:303;s:23:\"nextpage/editor.min.css\";i:304;s:24:\"page-list/editor-rtl.css\";i:305;s:28:\"page-list/editor-rtl.min.css\";i:306;s:20:\"page-list/editor.css\";i:307;s:24:\"page-list/editor.min.css\";i:308;s:23:\"page-list/style-rtl.css\";i:309;s:27:\"page-list/style-rtl.min.css\";i:310;s:19:\"page-list/style.css\";i:311;s:23:\"page-list/style.min.css\";i:312;s:24:\"paragraph/editor-rtl.css\";i:313;s:28:\"paragraph/editor-rtl.min.css\";i:314;s:20:\"paragraph/editor.css\";i:315;s:24:\"paragraph/editor.min.css\";i:316;s:23:\"paragraph/style-rtl.css\";i:317;s:27:\"paragraph/style-rtl.min.css\";i:318;s:19:\"paragraph/style.css\";i:319;s:23:\"paragraph/style.min.css\";i:320;s:28:\"playlist-track/style-rtl.css\";i:321;s:32:\"playlist-track/style-rtl.min.css\";i:322;s:24:\"playlist-track/style.css\";i:323;s:28:\"playlist-track/style.min.css\";i:324;s:23:\"playlist/editor-rtl.css\";i:325;s:27:\"playlist/editor-rtl.min.css\";i:326;s:19:\"playlist/editor.css\";i:327;s:23:\"playlist/editor.min.css\";i:328;s:22:\"playlist/style-rtl.css\";i:329;s:26:\"playlist/style-rtl.min.css\";i:330;s:18:\"playlist/style.css\";i:331;s:22:\"playlist/style.min.css\";i:332;s:35:\"post-author-biography/style-rtl.css\";i:333;s:39:\"post-author-biography/style-rtl.min.css\";i:334;s:31:\"post-author-biography/style.css\";i:335;s:35:\"post-author-biography/style.min.css\";i:336;s:30:\"post-author-name/style-rtl.css\";i:337;s:34:\"post-author-name/style-rtl.min.css\";i:338;s:26:\"post-author-name/style.css\";i:339;s:30:\"post-author-name/style.min.css\";i:340;s:26:\"post-author/editor-rtl.css\";i:341;s:30:\"post-author/editor-rtl.min.css\";i:342;s:22:\"post-author/editor.css\";i:343;s:26:\"post-author/editor.min.css\";i:344;s:25:\"post-author/style-rtl.css\";i:345;s:29:\"post-author/style-rtl.min.css\";i:346;s:21:\"post-author/style.css\";i:347;s:25:\"post-author/style.min.css\";i:348;s:33:\"post-comments-count/style-rtl.css\";i:349;s:37:\"post-comments-count/style-rtl.min.css\";i:350;s:29:\"post-comments-count/style.css\";i:351;s:33:\"post-comments-count/style.min.css\";i:352;s:33:\"post-comments-form/editor-rtl.css\";i:353;s:37:\"post-comments-form/editor-rtl.min.css\";i:354;s:29:\"post-comments-form/editor.css\";i:355;s:33:\"post-comments-form/editor.min.css\";i:356;s:32:\"post-comments-form/style-rtl.css\";i:357;s:36:\"post-comments-form/style-rtl.min.css\";i:358;s:28:\"post-comments-form/style.css\";i:359;s:32:\"post-comments-form/style.min.css\";i:360;s:32:\"post-comments-link/style-rtl.css\";i:361;s:36:\"post-comments-link/style-rtl.min.css\";i:362;s:28:\"post-comments-link/style.css\";i:363;s:32:\"post-comments-link/style.min.css\";i:364;s:26:\"post-content/style-rtl.css\";i:365;s:30:\"post-content/style-rtl.min.css\";i:366;s:22:\"post-content/style.css\";i:367;s:26:\"post-content/style.min.css\";i:368;s:23:\"post-date/style-rtl.css\";i:369;s:27:\"post-date/style-rtl.min.css\";i:370;s:19:\"post-date/style.css\";i:371;s:23:\"post-date/style.min.css\";i:372;s:27:\"post-excerpt/editor-rtl.css\";i:373;s:31:\"post-excerpt/editor-rtl.min.css\";i:374;s:23:\"post-excerpt/editor.css\";i:375;s:27:\"post-excerpt/editor.min.css\";i:376;s:26:\"post-excerpt/style-rtl.css\";i:377;s:30:\"post-excerpt/style-rtl.min.css\";i:378;s:22:\"post-excerpt/style.css\";i:379;s:26:\"post-excerpt/style.min.css\";i:380;s:34:\"post-featured-image/editor-rtl.css\";i:381;s:38:\"post-featured-image/editor-rtl.min.css\";i:382;s:30:\"post-featured-image/editor.css\";i:383;s:34:\"post-featured-image/editor.min.css\";i:384;s:33:\"post-featured-image/style-rtl.css\";i:385;s:37:\"post-featured-image/style-rtl.min.css\";i:386;s:29:\"post-featured-image/style.css\";i:387;s:33:\"post-featured-image/style.min.css\";i:388;s:34:\"post-navigation-link/style-rtl.css\";i:389;s:38:\"post-navigation-link/style-rtl.min.css\";i:390;s:30:\"post-navigation-link/style.css\";i:391;s:34:\"post-navigation-link/style.min.css\";i:392;s:27:\"post-template/style-rtl.css\";i:393;s:31:\"post-template/style-rtl.min.css\";i:394;s:23:\"post-template/style.css\";i:395;s:27:\"post-template/style.min.css\";i:396;s:24:\"post-terms/style-rtl.css\";i:397;s:28:\"post-terms/style-rtl.min.css\";i:398;s:20:\"post-terms/style.css\";i:399;s:24:\"post-terms/style.min.css\";i:400;s:31:\"post-time-to-read/style-rtl.css\";i:401;s:35:\"post-time-to-read/style-rtl.min.css\";i:402;s:27:\"post-time-to-read/style.css\";i:403;s:31:\"post-time-to-read/style.min.css\";i:404;s:24:\"post-title/style-rtl.css\";i:405;s:28:\"post-title/style-rtl.min.css\";i:406;s:20:\"post-title/style.css\";i:407;s:24:\"post-title/style.min.css\";i:408;s:26:\"preformatted/style-rtl.css\";i:409;s:30:\"preformatted/style-rtl.min.css\";i:410;s:22:\"preformatted/style.css\";i:411;s:26:\"preformatted/style.min.css\";i:412;s:24:\"pullquote/editor-rtl.css\";i:413;s:28:\"pullquote/editor-rtl.min.css\";i:414;s:20:\"pullquote/editor.css\";i:415;s:24:\"pullquote/editor.min.css\";i:416;s:23:\"pullquote/style-rtl.css\";i:417;s:27:\"pullquote/style-rtl.min.css\";i:418;s:19:\"pullquote/style.css\";i:419;s:23:\"pullquote/style.min.css\";i:420;s:23:\"pullquote/theme-rtl.css\";i:421;s:27:\"pullquote/theme-rtl.min.css\";i:422;s:19:\"pullquote/theme.css\";i:423;s:23:\"pullquote/theme.min.css\";i:424;s:39:\"query-pagination-numbers/editor-rtl.css\";i:425;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:426;s:35:\"query-pagination-numbers/editor.css\";i:427;s:39:\"query-pagination-numbers/editor.min.css\";i:428;s:31:\"query-pagination/editor-rtl.css\";i:429;s:35:\"query-pagination/editor-rtl.min.css\";i:430;s:27:\"query-pagination/editor.css\";i:431;s:31:\"query-pagination/editor.min.css\";i:432;s:30:\"query-pagination/style-rtl.css\";i:433;s:34:\"query-pagination/style-rtl.min.css\";i:434;s:26:\"query-pagination/style.css\";i:435;s:30:\"query-pagination/style.min.css\";i:436;s:25:\"query-title/style-rtl.css\";i:437;s:29:\"query-title/style-rtl.min.css\";i:438;s:21:\"query-title/style.css\";i:439;s:25:\"query-title/style.min.css\";i:440;s:25:\"query-total/style-rtl.css\";i:441;s:29:\"query-total/style-rtl.min.css\";i:442;s:21:\"query-total/style.css\";i:443;s:25:\"query-total/style.min.css\";i:444;s:20:\"query/editor-rtl.css\";i:445;s:24:\"query/editor-rtl.min.css\";i:446;s:16:\"query/editor.css\";i:447;s:20:\"query/editor.min.css\";i:448;s:19:\"quote/style-rtl.css\";i:449;s:23:\"quote/style-rtl.min.css\";i:450;s:15:\"quote/style.css\";i:451;s:19:\"quote/style.min.css\";i:452;s:19:\"quote/theme-rtl.css\";i:453;s:23:\"quote/theme-rtl.min.css\";i:454;s:15:\"quote/theme.css\";i:455;s:19:\"quote/theme.min.css\";i:456;s:23:\"read-more/style-rtl.css\";i:457;s:27:\"read-more/style-rtl.min.css\";i:458;s:19:\"read-more/style.css\";i:459;s:23:\"read-more/style.min.css\";i:460;s:18:\"rss/editor-rtl.css\";i:461;s:22:\"rss/editor-rtl.min.css\";i:462;s:14:\"rss/editor.css\";i:463;s:18:\"rss/editor.min.css\";i:464;s:17:\"rss/style-rtl.css\";i:465;s:21:\"rss/style-rtl.min.css\";i:466;s:13:\"rss/style.css\";i:467;s:17:\"rss/style.min.css\";i:468;s:21:\"search/editor-rtl.css\";i:469;s:25:\"search/editor-rtl.min.css\";i:470;s:17:\"search/editor.css\";i:471;s:21:\"search/editor.min.css\";i:472;s:20:\"search/style-rtl.css\";i:473;s:24:\"search/style-rtl.min.css\";i:474;s:16:\"search/style.css\";i:475;s:20:\"search/style.min.css\";i:476;s:20:\"search/theme-rtl.css\";i:477;s:24:\"search/theme-rtl.min.css\";i:478;s:16:\"search/theme.css\";i:479;s:20:\"search/theme.min.css\";i:480;s:24:\"separator/editor-rtl.css\";i:481;s:28:\"separator/editor-rtl.min.css\";i:482;s:20:\"separator/editor.css\";i:483;s:24:\"separator/editor.min.css\";i:484;s:23:\"separator/style-rtl.css\";i:485;s:27:\"separator/style-rtl.min.css\";i:486;s:19:\"separator/style.css\";i:487;s:23:\"separator/style.min.css\";i:488;s:23:\"separator/theme-rtl.css\";i:489;s:27:\"separator/theme-rtl.min.css\";i:490;s:19:\"separator/theme.css\";i:491;s:23:\"separator/theme.min.css\";i:492;s:24:\"shortcode/editor-rtl.css\";i:493;s:28:\"shortcode/editor-rtl.min.css\";i:494;s:20:\"shortcode/editor.css\";i:495;s:24:\"shortcode/editor.min.css\";i:496;s:24:\"site-logo/editor-rtl.css\";i:497;s:28:\"site-logo/editor-rtl.min.css\";i:498;s:20:\"site-logo/editor.css\";i:499;s:24:\"site-logo/editor.min.css\";i:500;s:23:\"site-logo/style-rtl.css\";i:501;s:27:\"site-logo/style-rtl.min.css\";i:502;s:19:\"site-logo/style.css\";i:503;s:23:\"site-logo/style.min.css\";i:504;s:27:\"site-tagline/editor-rtl.css\";i:505;s:31:\"site-tagline/editor-rtl.min.css\";i:506;s:23:\"site-tagline/editor.css\";i:507;s:27:\"site-tagline/editor.min.css\";i:508;s:26:\"site-tagline/style-rtl.css\";i:509;s:30:\"site-tagline/style-rtl.min.css\";i:510;s:22:\"site-tagline/style.css\";i:511;s:26:\"site-tagline/style.min.css\";i:512;s:25:\"site-title/editor-rtl.css\";i:513;s:29:\"site-title/editor-rtl.min.css\";i:514;s:21:\"site-title/editor.css\";i:515;s:25:\"site-title/editor.min.css\";i:516;s:24:\"site-title/style-rtl.css\";i:517;s:28:\"site-title/style-rtl.min.css\";i:518;s:20:\"site-title/style.css\";i:519;s:24:\"site-title/style.min.css\";i:520;s:26:\"social-link/editor-rtl.css\";i:521;s:30:\"social-link/editor-rtl.min.css\";i:522;s:22:\"social-link/editor.css\";i:523;s:26:\"social-link/editor.min.css\";i:524;s:27:\"social-links/editor-rtl.css\";i:525;s:31:\"social-links/editor-rtl.min.css\";i:526;s:23:\"social-links/editor.css\";i:527;s:27:\"social-links/editor.min.css\";i:528;s:26:\"social-links/style-rtl.css\";i:529;s:30:\"social-links/style-rtl.min.css\";i:530;s:22:\"social-links/style.css\";i:531;s:26:\"social-links/style.min.css\";i:532;s:21:\"spacer/editor-rtl.css\";i:533;s:25:\"spacer/editor-rtl.min.css\";i:534;s:17:\"spacer/editor.css\";i:535;s:21:\"spacer/editor.min.css\";i:536;s:20:\"spacer/style-rtl.css\";i:537;s:24:\"spacer/style-rtl.min.css\";i:538;s:16:\"spacer/style.css\";i:539;s:20:\"spacer/style.min.css\";i:540;s:23:\"tab-list/editor-rtl.css\";i:541;s:27:\"tab-list/editor-rtl.min.css\";i:542;s:19:\"tab-list/editor.css\";i:543;s:23:\"tab-list/editor.min.css\";i:544;s:22:\"tab-list/style-rtl.css\";i:545;s:26:\"tab-list/style-rtl.min.css\";i:546;s:18:\"tab-list/style.css\";i:547;s:22:\"tab-list/style.min.css\";i:548;s:23:\"tab-panel/style-rtl.css\";i:549;s:27:\"tab-panel/style-rtl.min.css\";i:550;s:19:\"tab-panel/style.css\";i:551;s:23:\"tab-panel/style.min.css\";i:552;s:20:\"table/editor-rtl.css\";i:553;s:24:\"table/editor-rtl.min.css\";i:554;s:16:\"table/editor.css\";i:555;s:20:\"table/editor.min.css\";i:556;s:19:\"table/style-rtl.css\";i:557;s:23:\"table/style-rtl.min.css\";i:558;s:15:\"table/style.css\";i:559;s:19:\"table/style.min.css\";i:560;s:19:\"table/theme-rtl.css\";i:561;s:23:\"table/theme-rtl.min.css\";i:562;s:15:\"table/theme.css\";i:563;s:19:\"table/theme.min.css\";i:564;s:18:\"tabs/style-rtl.css\";i:565;s:22:\"tabs/style-rtl.min.css\";i:566;s:14:\"tabs/style.css\";i:567;s:18:\"tabs/style.min.css\";i:568;s:23:\"tag-cloud/style-rtl.css\";i:569;s:27:\"tag-cloud/style-rtl.min.css\";i:570;s:19:\"tag-cloud/style.css\";i:571;s:23:\"tag-cloud/style.min.css\";i:572;s:28:\"template-part/editor-rtl.css\";i:573;s:32:\"template-part/editor-rtl.min.css\";i:574;s:24:\"template-part/editor.css\";i:575;s:28:\"template-part/editor.min.css\";i:576;s:27:\"template-part/theme-rtl.css\";i:577;s:31:\"template-part/theme-rtl.min.css\";i:578;s:23:\"template-part/theme.css\";i:579;s:27:\"template-part/theme.min.css\";i:580;s:24:\"term-count/style-rtl.css\";i:581;s:28:\"term-count/style-rtl.min.css\";i:582;s:20:\"term-count/style.css\";i:583;s:24:\"term-count/style.min.css\";i:584;s:30:\"term-description/style-rtl.css\";i:585;s:34:\"term-description/style-rtl.min.css\";i:586;s:26:\"term-description/style.css\";i:587;s:30:\"term-description/style.min.css\";i:588;s:23:\"term-name/style-rtl.css\";i:589;s:27:\"term-name/style-rtl.min.css\";i:590;s:19:\"term-name/style.css\";i:591;s:23:\"term-name/style.min.css\";i:592;s:28:\"term-template/editor-rtl.css\";i:593;s:32:\"term-template/editor-rtl.min.css\";i:594;s:24:\"term-template/editor.css\";i:595;s:28:\"term-template/editor.min.css\";i:596;s:27:\"term-template/style-rtl.css\";i:597;s:31:\"term-template/style-rtl.min.css\";i:598;s:23:\"term-template/style.css\";i:599;s:27:\"term-template/style.min.css\";i:600;s:27:\"text-columns/editor-rtl.css\";i:601;s:31:\"text-columns/editor-rtl.min.css\";i:602;s:23:\"text-columns/editor.css\";i:603;s:27:\"text-columns/editor.min.css\";i:604;s:26:\"text-columns/style-rtl.css\";i:605;s:30:\"text-columns/style-rtl.min.css\";i:606;s:22:\"text-columns/style.css\";i:607;s:26:\"text-columns/style.min.css\";i:608;s:19:\"verse/style-rtl.css\";i:609;s:23:\"verse/style-rtl.min.css\";i:610;s:15:\"verse/style.css\";i:611;s:19:\"verse/style.min.css\";i:612;s:20:\"video/editor-rtl.css\";i:613;s:24:\"video/editor-rtl.min.css\";i:614;s:16:\"video/editor.css\";i:615;s:20:\"video/editor.min.css\";i:616;s:19:\"video/style-rtl.css\";i:617;s:23:\"video/style-rtl.min.css\";i:618;s:15:\"video/style.css\";i:619;s:19:\"video/style.min.css\";i:620;s:19:\"video/theme-rtl.css\";i:621;s:23:\"video/theme-rtl.min.css\";i:622;s:15:\"video/theme.css\";i:623;s:19:\"video/theme.min.css\";}}','on');
INSERT INTO `wp_options` VALUES('124','WPLANG','','auto');
INSERT INTO `wp_options` VALUES('125','_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:56:\"http://downloads.wordpress.org/release/wordpress-7.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:56:\"http://downloads.wordpress.org/release/wordpress-7.1.zip\";s:10:\"no_content\";s:67:\"http://downloads.wordpress.org/release/wordpress-7.1-no-content.zip\";s:11:\"new_bundled\";s:68:\"http://downloads.wordpress.org/release/wordpress-7.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"7.1\";s:7:\"version\";s:3:\"7.1\";s:11:\"php_version\";s:3:\"7.4\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1788493318;s:15:\"version_checked\";s:3:\"7.1\";s:12:\"translations\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES('126','_site_transient_timeout_wp_theme_files_patterns-e386fda74e1b4b0097216835e271951f','1788494538','off');
INSERT INTO `wp_options` VALUES('127','_site_transient_wp_theme_files_patterns-e386fda74e1b4b0097216835e271951f','a:2:{s:7:\"version\";s:3:\"1.5\";s:8:\"patterns\";a:98:{s:21:\"banner-about-book.php\";a:4:{s:5:\"title\";s:28:\"Banner with book description\";s:4:\"slug\";s:34:\"twentytwentyfive/banner-about-book\";s:11:\"description\";s:66:\"Banner with book description and accompanying image for promotion.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:28:\"banner-cover-big-heading.php\";a:4:{s:5:\"title\";s:22:\"Cover with big heading\";s:4:\"slug\";s:41:\"twentytwentyfive/banner-cover-big-heading\";s:11:\"description\";s:82:\"A full-width cover section with a large background image and an oversized heading.\";s:10:\"categories\";a:3:{i:0;s:6:\"banner\";i:1;s:5:\"about\";i:2;s:8:\"featured\";}}s:22:\"banner-intro-image.php\";a:4:{s:5:\"title\";s:49:\"Short heading and paragraph and image on the left\";s:4:\"slug\";s:35:\"twentytwentyfive/banner-intro-image\";s:11:\"description\";s:68:\"A Intro pattern with Short heading, paragraph and image on the left.\";s:10:\"categories\";a:2:{i:0;s:6:\"banner\";i:1;s:8:\"featured\";}}s:16:\"banner-intro.php\";a:4:{s:5:\"title\";s:35:\"Intro with left-aligned description\";s:4:\"slug\";s:29:\"twentytwentyfive/banner-intro\";s:11:\"description\";s:66:\"A large left-aligned heading with a brand name emphasized in bold.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:17:\"banner-poster.php\";a:4:{s:5:\"title\";s:19:\"Poster-like section\";s:4:\"slug\";s:30:\"twentytwentyfive/banner-poster\";s:11:\"description\";s:78:\"A section that can be used as a banner or a landing page to announce an event.\";s:10:\"categories\";a:2:{i:0;s:6:\"banner\";i:1;s:5:\"media\";}}s:43:\"banner-with-description-and-images-grid.php\";a:4:{s:5:\"title\";s:39:\"Banner with description and images grid\";s:4:\"slug\";s:47:\"twentytwentyfive/banner-description-images-grid\";s:11:\"description\";s:75:\"A banner with a short paragraph, and two images displayed in a grid layout.\";s:10:\"categories\";a:2:{i:0;s:6:\"banner\";i:1;s:8:\"featured\";}}s:18:\"binding-format.php\";a:4:{s:5:\"title\";s:16:\"Post format name\";s:4:\"slug\";s:31:\"twentytwentyfive/binding-format\";s:11:\"description\";s:75:\"Prints the name of the post format with the help of the Block Bindings API.\";s:10:\"categories\";a:1:{i:0;s:28:\"twentytwentyfive_post-format\";}}s:12:\"comments.php\";a:5:{s:5:\"title\";s:8:\"Comments\";s:4:\"slug\";s:25:\"twentytwentyfive/comments\";s:11:\"description\";s:63:\"Comments area with comments list, pagination, and comment form.\";s:10:\"categories\";a:1:{i:0;s:4:\"text\";}s:10:\"blockTypes\";a:1:{i:0;s:13:\"core/comments\";}}s:32:\"contact-centered-social-link.php\";a:5:{s:5:\"title\";s:30:\"Centered link and social links\";s:4:\"slug\";s:45:\"twentytwentyfive/contact-centered-social-link\";s:11:\"description\";s:73:\"Centered contact section with a prominent message and social media links.\";s:10:\"categories\";a:1:{i:0;s:7:\"contact\";}s:8:\"keywords\";a:3:{i:0;s:7:\"contact\";i:1;s:3:\"faq\";i:2;s:9:\"questions\";}}s:26:\"contact-info-locations.php\";a:6:{s:5:\"title\";s:27:\"Contact, info and locations\";s:4:\"slug\";s:39:\"twentytwentyfive/contact-info-locations\";s:11:\"description\";s:78:\"Contact section with social media links, email, and multiple location details.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:7:\"contact\";}s:8:\"keywords\";a:2:{i:0;s:7:\"contact\";i:1;s:8:\"location\";}}s:29:\"contact-location-and-link.php\";a:4:{s:5:\"title\";s:25:\"Contact location and link\";s:4:\"slug\";s:42:\"twentytwentyfive/contact-location-and-link\";s:11:\"description\";s:89:\"Contact section with a location address, a directions link, and an image of the location.\";s:10:\"categories\";a:2:{i:0;s:7:\"contact\";i:1;s:8:\"featured\";}}s:18:\"cta-book-links.php\";a:4:{s:5:\"title\";s:30:\"Call to action with book links\";s:4:\"slug\";s:31:\"twentytwentyfive/cta-book-links\";s:11:\"description\";s:74:\"A call to action section with links to get the book in different websites.\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:22:\"cta-book-locations.php\";a:4:{s:5:\"title\";s:29:\"Call to action with locations\";s:4:\"slug\";s:35:\"twentytwentyfive/cta-book-locations\";s:11:\"description\";s:82:\"A call to action section with links to get the book in the most popular locations.\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:24:\"cta-centered-heading.php\";a:4:{s:5:\"title\";s:16:\"Centered heading\";s:4:\"slug\";s:37:\"twentytwentyfive/cta-centered-heading\";s:11:\"description\";s:53:\"A hero with a centered heading, paragraph and button.\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:19:\"cta-events-list.php\";a:4:{s:5:\"title\";s:11:\"Events list\";s:4:\"slug\";s:32:\"twentytwentyfive/cta-events-list\";s:11:\"description\";s:37:\"A list of events with call to action.\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:26:\"cta-grid-products-link.php\";a:5:{s:5:\"title\";s:54:\"Call to action with grid layout with products and link\";s:4:\"slug\";s:39:\"twentytwentyfive/cta-grid-products-link\";s:11:\"description\";s:42:\"A call to action featuring product images.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:14:\"call-to-action\";i:1;s:8:\"featured\";}}s:22:\"cta-heading-search.php\";a:4:{s:5:\"title\";s:23:\"Heading and search form\";s:4:\"slug\";s:35:\"twentytwentyfive/cta-heading-search\";s:11:\"description\";s:54:\"Large heading with a search form for quick navigation.\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:18:\"cta-newsletter.php\";a:5:{s:5:\"title\";s:18:\"Newsletter sign-up\";s:4:\"slug\";s:31:\"twentytwentyfive/cta-newsletter\";s:11:\"description\";s:0:\"\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}s:8:\"keywords\";a:2:{i:0;s:14:\"call-to-action\";i:1;s:10:\"newsletter\";}}s:15:\"event-3-col.php\";a:5:{s:5:\"title\";s:46:\"Events, 3 columns with event images and titles\";s:4:\"slug\";s:28:\"twentytwentyfive/event-3-col\";s:11:\"description\";s:95:\"A header with title and text and three columns that show 3 events with their images and titles.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}s:8:\"keywords\";a:3:{i:0;s:6:\"events\";i:1;s:7:\"columns\";i:2;s:6:\"images\";}}s:14:\"event-rsvp.php\";a:7:{s:5:\"title\";s:10:\"Event RSVP\";s:4:\"slug\";s:27:\"twentytwentyfive/event-rsvp\";s:11:\"description\";s:64:\"RSVP for an upcoming event with a cover image and event details.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}s:8:\"keywords\";a:3:{i:0;s:14:\"call-to-action\";i:1;s:4:\"rsvp\";i:2;s:5:\"event\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}}s:18:\"event-schedule.php\";a:5:{s:5:\"title\";s:14:\"Event schedule\";s:4:\"slug\";s:31:\"twentytwentyfive/event-schedule\";s:11:\"description\";s:54:\"A section with specified dates and times for an event.\";s:10:\"categories\";a:1:{i:0;s:5:\"about\";}s:8:\"keywords\";a:4:{i:0;s:6:\"events\";i:1;s:6:\"agenda\";i:2;s:8:\"schedule\";i:3;s:8:\"lectures\";}}s:19:\"footer-centered.php\";a:5:{s:5:\"title\";s:15:\"Centered footer\";s:4:\"slug\";s:32:\"twentytwentyfive/footer-centered\";s:11:\"description\";s:44:\"Footer with centered site title and tagline.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:18:\"footer-columns.php\";a:5:{s:5:\"title\";s:19:\"Footer with columns\";s:4:\"slug\";s:31:\"twentytwentyfive/footer-columns\";s:11:\"description\";s:45:\"Footer columns with title, tagline and links.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:21:\"footer-newsletter.php\";a:5:{s:5:\"title\";s:29:\"Footer with newsletter signup\";s:4:\"slug\";s:34:\"twentytwentyfive/footer-newsletter\";s:11:\"description\";s:51:\"Footer with large site title and newsletter signup.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:17:\"footer-social.php\";a:5:{s:5:\"title\";s:33:\"Centered footer with social links\";s:4:\"slug\";s:30:\"twentytwentyfive/footer-social\";s:11:\"description\";s:49:\"Footer with centered site title and social links.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:10:\"footer.php\";a:5:{s:5:\"title\";s:6:\"Footer\";s:4:\"slug\";s:23:\"twentytwentyfive/footer\";s:11:\"description\";s:51:\"Footer columns with logo, title, tagline and links.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:16:\"format-audio.php\";a:4:{s:5:\"title\";s:12:\"Audio format\";s:4:\"slug\";s:29:\"twentytwentyfive/format-audio\";s:11:\"description\";s:73:\"An audio post format with an image, title, audio player, and description.\";s:10:\"categories\";a:1:{i:0;s:28:\"twentytwentyfive_post-format\";}}s:15:\"format-link.php\";a:4:{s:5:\"title\";s:11:\"Link format\";s:4:\"slug\";s:28:\"twentytwentyfive/format-link\";s:11:\"description\";s:77:\"A link post format with a description and an emphasized link for key content.\";s:10:\"categories\";a:1:{i:0;s:28:\"twentytwentyfive_post-format\";}}s:15:\"grid-videos.php\";a:4:{s:5:\"title\";s:16:\"Grid with videos\";s:4:\"slug\";s:28:\"twentytwentyfive/grid-videos\";s:11:\"description\";s:19:\"A grid with videos.\";s:10:\"categories\";a:1:{i:0;s:5:\"about\";}}s:24:\"grid-with-categories.php\";a:5:{s:5:\"title\";s:20:\"Grid with categories\";s:4:\"slug\";s:37:\"twentytwentyfive/grid-with-categories\";s:11:\"description\";s:41:\"A grid section with different categories.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:19:\"header-centered.php\";a:5:{s:5:\"title\";s:20:\"Centered site header\";s:4:\"slug\";s:32:\"twentytwentyfive/header-centered\";s:11:\"description\";s:52:\"Site header with centered site title and navigation.\";s:10:\"categories\";a:1:{i:0;s:6:\"header\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/header\";}}s:18:\"header-columns.php\";a:5:{s:5:\"title\";s:19:\"Header with columns\";s:4:\"slug\";s:31:\"twentytwentyfive/header-columns\";s:11:\"description\";s:54:\"Site header with site title and navigation in columns.\";s:10:\"categories\";a:1:{i:0;s:6:\"header\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/header\";}}s:22:\"header-large-title.php\";a:5:{s:5:\"title\";s:23:\"Header with large title\";s:4:\"slug\";s:35:\"twentytwentyfive/header-large-title\";s:11:\"description\";s:63:\"Site header with large site title and right-aligned navigation.\";s:10:\"categories\";a:1:{i:0;s:6:\"header\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/header\";}}s:10:\"header.php\";a:5:{s:5:\"title\";s:6:\"Header\";s:4:\"slug\";s:23:\"twentytwentyfive/header\";s:11:\"description\";s:43:\"Site header with site title and navigation.\";s:10:\"categories\";a:1:{i:0;s:6:\"header\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/header\";}}s:36:\"heading-and-paragraph-with-image.php\";a:4:{s:5:\"title\";s:45:\"Heading and paragraph with image on the right\";s:4:\"slug\";s:49:\"twentytwentyfive/heading-and-paragraph-with-image\";s:11:\"description\";s:89:\"A two-column section with a heading and paragraph on the left, and an image on the right.\";s:10:\"categories\";a:1:{i:0;s:5:\"about\";}}s:13:\"hero-book.php\";a:5:{s:5:\"title\";s:9:\"Hero book\";s:4:\"slug\";s:26:\"twentytwentyfive/hero-book\";s:11:\"description\";s:66:\"A hero section for the book with a description and pre-order link.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}s:8:\"keywords\";a:3:{i:0;s:7:\"podcast\";i:1;s:4:\"hero\";i:2;s:7:\"stories\";}}s:25:\"hero-full-width-image.php\";a:4:{s:5:\"title\";s:22:\"Hero, full width image\";s:4:\"slug\";s:38:\"twentytwentyfive/hero-full-width-image\";s:11:\"description\";s:68:\"A hero with a full width image, heading, short paragraph and button.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:41:\"hero-overlapped-book-cover-with-links.php\";a:4:{s:5:\"title\";s:38:\"Hero, overlapped book cover with links\";s:4:\"slug\";s:54:\"twentytwentyfive/hero-overlapped-book-cover-with-links\";s:11:\"description\";s:47:\"A hero with an overlapped book cover and links.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:16:\"hero-podcast.php\";a:5:{s:5:\"title\";s:12:\"Hero podcast\";s:4:\"slug\";s:29:\"twentytwentyfive/hero-podcast\";s:11:\"description\";s:0:\"\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}s:8:\"keywords\";a:3:{i:0;s:7:\"podcast\";i:1;s:4:\"hero\";i:2;s:7:\"stories\";}}s:14:\"hidden-404.php\";a:4:{s:5:\"title\";s:3:\"404\";s:4:\"slug\";s:27:\"twentytwentyfive/hidden-404\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:23:\"hidden-blog-heading.php\";a:4:{s:5:\"title\";s:19:\"Hidden blog heading\";s:4:\"slug\";s:36:\"twentytwentyfive/hidden-blog-heading\";s:11:\"description\";s:52:\"Hidden heading for the home page and index template.\";s:8:\"inserter\";b:0;}s:17:\"hidden-search.php\";a:4:{s:5:\"title\";s:6:\"Search\";s:4:\"slug\";s:30:\"twentytwentyfive/hidden-search\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:18:\"hidden-sidebar.php\";a:4:{s:5:\"title\";s:7:\"Sidebar\";s:4:\"slug\";s:31:\"twentytwentyfive/hidden-sidebar\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:21:\"hidden-written-by.php\";a:4:{s:5:\"title\";s:10:\"Written by\";s:4:\"slug\";s:34:\"twentytwentyfive/hidden-written-by\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:9:\"logos.php\";a:4:{s:5:\"title\";s:5:\"Logos\";s:4:\"slug\";s:22:\"twentytwentyfive/logos\";s:11:\"description\";s:77:\"Showcasing the podcast\'s clients with a heading and a series of client logos.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:24:\"media-instagram-grid.php\";a:5:{s:5:\"title\";s:14:\"Instagram grid\";s:4:\"slug\";s:37:\"twentytwentyfive/media-instagram-grid\";s:11:\"description\";s:62:\"A grid section with photos and a link to an Instagram profile.\";s:13:\"viewportWidth\";i:1440;s:10:\"categories\";a:3:{i:0;s:5:\"media\";i:1;s:7:\"gallery\";i:2;s:8:\"featured\";}}s:14:\"more-posts.php\";a:5:{s:5:\"title\";s:10:\"More posts\";s:4:\"slug\";s:27:\"twentytwentyfive/more-posts\";s:11:\"description\";s:45:\"Displays a list of posts with title and date.\";s:10:\"categories\";a:1:{i:0;s:5:\"query\";}s:10:\"blockTypes\";a:1:{i:0;s:10:\"core/query\";}}s:21:\"overlapped-images.php\";a:4:{s:5:\"title\";s:41:\"Overlapping images and paragraph on right\";s:4:\"slug\";s:34:\"twentytwentyfive/overlapped-images\";s:11:\"description\";s:53:\"A section with overlapping images, and a description.\";s:10:\"categories\";a:2:{i:0;s:5:\"about\";i:1;s:8:\"featured\";}}s:22:\"page-business-home.php\";a:8:{s:5:\"title\";s:17:\"Business homepage\";s:4:\"slug\";s:35:\"twentytwentyfive/page-business-home\";s:11:\"description\";s:28:\"A business homepage pattern.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:20:\"page-coming-soon.php\";a:8:{s:5:\"title\";s:11:\"Coming soon\";s:4:\"slug\";s:33:\"twentytwentyfive/page-coming-soon\";s:11:\"description\";s:96:\"A full-width cover banner that can be applied to a page or it can work as a single landing page.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:15:\"page-cv-bio.php\";a:7:{s:5:\"title\";s:6:\"CV/bio\";s:4:\"slug\";s:28:\"twentytwentyfive/page-cv-bio\";s:11:\"description\";s:36:\"A pattern for a CV/Bio landing page.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:3:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:5:\"about\";i:2;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}}s:21:\"page-landing-book.php\";a:8:{s:5:\"title\";s:21:\"Landing page for book\";s:4:\"slug\";s:34:\"twentytwentyfive/page-landing-book\";s:11:\"description\";s:104:\"A landing page for the book with a hero section, pre-order links, locations, FAQs and newsletter signup.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:22:\"page-landing-event.php\";a:8:{s:5:\"title\";s:22:\"Landing page for event\";s:4:\"slug\";s:35:\"twentytwentyfive/page-landing-event\";s:11:\"description\";s:87:\"A landing page for the event with a hero section, description, FAQs and call to action.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:24:\"page-landing-podcast.php\";a:8:{s:5:\"title\";s:24:\"Landing page for podcast\";s:4:\"slug\";s:37:\"twentytwentyfive/page-landing-podcast\";s:11:\"description\";s:111:\"A landing page for the podcast with a hero section, description, logos, grid with videos and newsletter signup.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:50:\"page-link-in-bio-heading-paragraph-links-image.php\";a:7:{s:5:\"title\";s:59:\"Link in bio heading, paragraph, links and full-height image\";s:4:\"slug\";s:63:\"twentytwentyfive/page-link-in-bio-heading-paragraph-links-image\";s:11:\"description\";s:84:\"A link in bio landing page with a heading, paragraph, links and a full height image.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:3:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:6:\"banner\";i:2;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}}s:33:\"page-link-in-bio-wide-margins.php\";a:7:{s:5:\"title\";s:48:\"Link in bio with profile, links and wide margins\";s:4:\"slug\";s:46:\"twentytwentyfive/page-link-in-bio-wide-margins\";s:11:\"description\";s:86:\"A link in bio landing page with social links, a profile photo and a brief description.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:3:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:6:\"banner\";i:2;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}}s:39:\"page-link-in-bio-with-tight-margins.php\";a:8:{s:5:\"title\";s:30:\"Link in bio with tight margins\";s:4:\"slug\";s:52:\"twentytwentyfive/page-link-in-bio-with-tight-margins\";s:11:\"description\";s:90:\"A full-width, full-height link in bio section with an image, a paragraph and social links.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:6:\"banner\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:23:\"page-portfolio-home.php\";a:8:{s:5:\"title\";s:18:\"Portfolio homepage\";s:4:\"slug\";s:36:\"twentytwentyfive/page-portfolio-home\";s:11:\"description\";s:29:\"A portfolio homepage pattern.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:5:\"posts\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:18:\"page-shop-home.php\";a:8:{s:5:\"title\";s:13:\"Shop homepage\";s:4:\"slug\";s:31:\"twentytwentyfive/page-shop-home\";s:11:\"description\";s:24:\"A shop homepage pattern.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:21:\"twentytwentyfive_page\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:19:\"post-navigation.php\";a:5:{s:5:\"title\";s:15:\"Post navigation\";s:4:\"slug\";s:32:\"twentytwentyfive/post-navigation\";s:11:\"description\";s:29:\"Next and previous post links.\";s:10:\"categories\";a:1:{i:0;s:4:\"text\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/post-navigation-link\";}}s:17:\"pricing-2-col.php\";a:5:{s:5:\"title\";s:18:\"Pricing, 2 columns\";s:4:\"slug\";s:30:\"twentytwentyfive/pricing-2-col\";s:11:\"description\";s:88:\"Pricing section with two columns, pricing plan, description, and call-to-action buttons.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:17:\"pricing-3-col.php\";a:4:{s:5:\"title\";s:18:\"Pricing, 3 columns\";s:4:\"slug\";s:30:\"twentytwentyfive/pricing-3-col\";s:11:\"description\";s:100:\"A three-column boxed pricing table designed to showcase services, descriptions, and pricing options.\";s:10:\"categories\";a:3:{i:0;s:14:\"call-to-action\";i:1;s:6:\"banner\";i:2;s:8:\"services\";}}s:18:\"services-3-col.php\";a:4:{s:5:\"title\";s:19:\"Services, 3 columns\";s:4:\"slug\";s:31:\"twentytwentyfive/services-3-col\";s:11:\"description\";s:56:\"Three columns with images and text to showcase services.\";s:10:\"categories\";a:3:{i:0;s:14:\"call-to-action\";i:1;s:6:\"banner\";i:2;s:8:\"services\";}}s:36:\"services-subscriber-only-section.php\";a:4:{s:5:\"title\";s:33:\"Services, subscriber only section\";s:4:\"slug\";s:49:\"twentytwentyfive/services-subscriber-only-section\";s:11:\"description\";s:72:\"A subscriber-only section highlighting exclusive services and offerings.\";s:10:\"categories\";a:2:{i:0;s:14:\"call-to-action\";i:1;s:8:\"services\";}}s:24:\"services-team-photos.php\";a:4:{s:5:\"title\";s:21:\"Services, team photos\";s:4:\"slug\";s:37:\"twentytwentyfive/services-team-photos\";s:11:\"description\";s:59:\"Display team photos in a services section with grid layout.\";s:10:\"categories\";a:3:{i:0;s:6:\"banner\";i:1;s:14:\"call-to-action\";i:2;s:8:\"featured\";}}s:37:\"template-404-vertical-header-blog.php\";a:5:{s:5:\"title\";s:17:\"Right-aligned 404\";s:4:\"slug\";s:50:\"twentytwentyfive/template-404-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:13:\"templateTypes\";a:1:{i:0;s:3:\"404\";}}s:30:\"template-archive-news-blog.php\";a:6:{s:5:\"title\";s:17:\"News blog archive\";s:4:\"slug\";s:43:\"twentytwentyfive/template-archive-news-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:7:\"archive\";}}s:31:\"template-archive-photo-blog.php\";a:6:{s:5:\"title\";s:18:\"Photo blog archive\";s:4:\"slug\";s:44:\"twentytwentyfive/template-archive-photo-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:7:\"archive\";}}s:30:\"template-archive-text-blog.php\";a:6:{s:5:\"title\";s:17:\"Text blog archive\";s:4:\"slug\";s:43:\"twentytwentyfive/template-archive-text-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:7:\"archive\";}}s:41:\"template-archive-vertical-header-blog.php\";a:6:{s:5:\"title\";s:21:\"Right-aligned archive\";s:4:\"slug\";s:54:\"twentytwentyfive/template-archive-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:7:\"archive\";}}s:27:\"template-home-news-blog.php\";a:6:{s:5:\"title\";s:14:\"News blog home\";s:4:\"slug\";s:40:\"twentytwentyfive/template-home-news-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:3:{i:0;s:10:\"front-page\";i:1;s:5:\"index\";i:2;s:4:\"home\";}}s:28:\"template-home-photo-blog.php\";a:6:{s:5:\"title\";s:15:\"Photo blog home\";s:4:\"slug\";s:41:\"twentytwentyfive/template-home-photo-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:3:{i:0;s:10:\"front-page\";i:1;s:5:\"index\";i:2;s:4:\"home\";}}s:38:\"template-home-posts-grid-news-blog.php\";a:5:{s:5:\"title\";s:34:\"News blog with featured posts grid\";s:4:\"slug\";s:51:\"twentytwentyfive/template-home-posts-grid-news-blog\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:3:{i:0;s:10:\"front-page\";i:1;s:5:\"index\";i:2;s:4:\"home\";}}s:27:\"template-home-text-blog.php\";a:6:{s:5:\"title\";s:14:\"Text blog home\";s:4:\"slug\";s:40:\"twentytwentyfive/template-home-text-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:10:\"front-page\";i:1;s:4:\"home\";}}s:38:\"template-home-vertical-header-blog.php\";a:6:{s:5:\"title\";s:18:\"Right-aligned home\";s:4:\"slug\";s:51:\"twentytwentyfive/template-home-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:3:{i:0;s:10:\"front-page\";i:1;s:5:\"index\";i:2;s:4:\"home\";}}s:40:\"template-home-with-sidebar-news-blog.php\";a:6:{s:5:\"title\";s:22:\"News blog with sidebar\";s:4:\"slug\";s:53:\"twentytwentyfive/template-home-with-sidebar-news-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:3:{i:0;s:10:\"front-page\";i:1;s:5:\"index\";i:2;s:4:\"home\";}}s:28:\"template-page-photo-blog.php\";a:5:{s:5:\"title\";s:15:\"Photo blog page\";s:4:\"slug\";s:41:\"twentytwentyfive/template-page-photo-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:13:\"templateTypes\";a:1:{i:0;s:4:\"page\";}}s:38:\"template-page-vertical-header-blog.php\";a:5:{s:5:\"title\";s:18:\"Right-aligned page\";s:4:\"slug\";s:51:\"twentytwentyfive/template-page-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:13:\"templateTypes\";a:1:{i:0;s:4:\"page\";}}s:33:\"template-query-loop-news-blog.php\";a:4:{s:5:\"title\";s:20:\"News blog query loop\";s:4:\"slug\";s:46:\"twentytwentyfive/template-query-loop-news-blog\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:34:\"template-query-loop-photo-blog.php\";a:6:{s:5:\"title\";s:16:\"Photo blog posts\";s:4:\"slug\";s:47:\"twentytwentyfive/template-query-loop-photo-blog\";s:11:\"description\";s:54:\"A list of posts, 3 columns, with only featured images.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:5:\"query\";}s:10:\"blockTypes\";a:1:{i:0;s:10:\"core/query\";}}s:33:\"template-query-loop-text-blog.php\";a:4:{s:5:\"title\";s:20:\"Text blog query loop\";s:4:\"slug\";s:46:\"twentytwentyfive/template-query-loop-text-blog\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:44:\"template-query-loop-vertical-header-blog.php\";a:4:{s:5:\"title\";s:24:\"Right-aligned query loop\";s:4:\"slug\";s:57:\"twentytwentyfive/template-query-loop-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:23:\"template-query-loop.php\";a:5:{s:5:\"title\";s:23:\"List of posts, 1 column\";s:4:\"slug\";s:36:\"twentytwentyfive/template-query-loop\";s:11:\"description\";s:61:\"A list of posts, 1 column, with featured image and post date.\";s:10:\"categories\";a:1:{i:0;s:5:\"query\";}s:10:\"blockTypes\";a:1:{i:0;s:10:\"core/query\";}}s:29:\"template-search-news-blog.php\";a:6:{s:5:\"title\";s:24:\"News blog search results\";s:4:\"slug\";s:42:\"twentytwentyfive/template-search-news-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:6:\"search\";}}s:30:\"template-search-photo-blog.php\";a:6:{s:5:\"title\";s:25:\"Photo blog search results\";s:4:\"slug\";s:43:\"twentytwentyfive/template-search-photo-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:6:\"search\";}}s:29:\"template-search-text-blog.php\";a:6:{s:5:\"title\";s:24:\"Text blog search results\";s:4:\"slug\";s:42:\"twentytwentyfive/template-search-text-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:6:\"search\";}}s:40:\"template-search-vertical-header-blog.php\";a:6:{s:5:\"title\";s:26:\"Right-aligned blog, search\";s:4:\"slug\";s:53:\"twentytwentyfive/template-search-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:6:\"search\";}}s:40:\"template-single-left-aligned-content.php\";a:6:{s:5:\"title\";s:30:\"Post with left-aligned content\";s:4:\"slug\";s:47:\"twentytwentyfive/post-with-left-aligned-content\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:29:\"template-single-news-blog.php\";a:6:{s:5:\"title\";s:34:\"News blog single post with sidebar\";s:4:\"slug\";s:42:\"twentytwentyfive/template-single-news-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:26:\"template-single-offset.php\";a:6:{s:5:\"title\";s:34:\"Offset post without featured image\";s:4:\"slug\";s:39:\"twentytwentyfive/template-single-offset\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:30:\"template-single-photo-blog.php\";a:6:{s:5:\"title\";s:22:\"Photo blog single post\";s:4:\"slug\";s:43:\"twentytwentyfive/template-single-photo-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:29:\"template-single-text-blog.php\";a:6:{s:5:\"title\";s:21:\"Text blog single post\";s:4:\"slug\";s:42:\"twentytwentyfive/template-single-text-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:40:\"template-single-vertical-header-blog.php\";a:6:{s:5:\"title\";s:25:\"Right-aligned single post\";s:4:\"slug\";s:53:\"twentytwentyfive/template-single-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:22:\"testimonials-2-col.php\";a:5:{s:5:\"title\";s:21:\"2 columns with avatar\";s:4:\"slug\";s:35:\"twentytwentyfive/testimonials-2-col\";s:11:\"description\";s:42:\"Two columns with testimonials and avatars.\";s:10:\"categories\";a:1:{i:0;s:12:\"testimonials\";}s:8:\"keywords\";a:1:{i:0;s:11:\"testimonial\";}}s:22:\"testimonials-6-col.php\";a:5:{s:5:\"title\";s:35:\"3 column layout with 6 testimonials\";s:4:\"slug\";s:35:\"twentytwentyfive/testimonials-6-col\";s:11:\"description\";s:86:\"A section with three columns and two rows, each containing a testimonial and citation.\";s:10:\"categories\";a:1:{i:0;s:12:\"testimonials\";}s:8:\"keywords\";a:1:{i:0;s:11:\"testimonial\";}}s:22:\"testimonials-large.php\";a:5:{s:5:\"title\";s:32:\"Review with large image on right\";s:4:\"slug\";s:35:\"twentytwentyfive/testimonials-large\";s:11:\"description\";s:46:\"A testimonial with a large image on the right.\";s:10:\"categories\";a:1:{i:0;s:12:\"testimonials\";}s:8:\"keywords\";a:1:{i:0;s:11:\"testimonial\";}}s:13:\"text-faqs.php\";a:6:{s:5:\"title\";s:4:\"FAQs\";s:4:\"slug\";s:26:\"twentytwentyfive/text-faqs\";s:11:\"description\";s:68:\"A FAQs section with a FAQ heading and list of questions and answers.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:4:\"text\";i:1;s:5:\"about\";}s:8:\"keywords\";a:5:{i:0;s:3:\"faq\";i:1;s:5:\"about\";i:2;s:10:\"frequently\";i:3;s:5:\"asked\";i:4;s:9:\"questions\";}}s:19:\"vertical-header.php\";a:6:{s:5:\"title\";s:20:\"Vertical site header\";s:4:\"slug\";s:32:\"twentytwentyfive/vertical-header\";s:11:\"description\";s:52:\"Vertical site header with site title and navigation.\";s:13:\"viewportWidth\";i:300;s:10:\"categories\";a:1:{i:0;s:6:\"header\";}s:10:\"blockTypes\";a:1:{i:0;s:34:\"core/template-part/vertical-header\";}}}}','off');
INSERT INTO `wp_options` VALUES('128','theme_mods_twentytwentyfive','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1788493365;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','off');
INSERT INTO `wp_options` VALUES('129','_transient_wp_styles_for_blocks','a:2:{s:4:\"hash\";s:32:\"48698f8f00faadf4f2a9a0280fdd228c\";s:6:\"blocks\";a:9:{s:32:\"832dc2d864d79097d8b8b493ad93453b\";s:0:\"\";s:32:\"45d3e0c4afcbd8cf25cb1ba51abfb3d7\";s:46:\":root :where(.wp-block-icon svg){width: 24px;}\";s:32:\"feca6e996f694be2d29599793228e0d7\";s:0:\"\";s:32:\"5eef131663eddaf830554df656fc2968\";s:0:\"\";s:32:\"c99c05932c6685777ec5b856698fcc7d\";s:0:\"\";s:32:\"dec8d648f30b13caec8e61374591787d\";s:0:\"\";s:32:\"6c35533f7a92cce94808323603db9fc8\";s:0:\"\";s:32:\"6a0505cd5c78a87ed77570cda43c1132\";s:0:\"\";s:32:\"25a66f156386551185570f72a9f7d44e\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}','on');
INSERT INTO `wp_options` VALUES('134','_site_transient_timeout_theme_roots','1788495164','off');
INSERT INTO `wp_options` VALUES('135','_site_transient_theme_roots','a:4:{s:10:\"storefront\";s:7:\"/themes\";s:16:\"twentytwentyfive\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";}','off');
INSERT INTO `wp_options` VALUES('137','action_scheduler_hybrid_store_demarkation','5','auto');
INSERT INTO `wp_options` VALUES('138','schema-ActionScheduler_StoreSchema','8.0.1788493252','auto');
INSERT INTO `wp_options` VALUES('139','schema-ActionScheduler_LoggerSchema','3.0.1788493252','auto');
INSERT INTO `wp_options` VALUES('140','_transient_timeout_as-post-store-dependencies-met','1788579652','off');
INSERT INTO `wp_options` VALUES('141','_transient_as-post-store-dependencies-met','yes','off');
INSERT INTO `wp_options` VALUES('145','woocommerce_newly_installed','yes','auto');
INSERT INTO `wp_options` VALUES('146','woocommerce_order_stats_has_fulfillment_column','no','off');
INSERT INTO `wp_options` VALUES('147','woocommerce_schema_version','920','auto');
INSERT INTO `wp_options` VALUES('148','woocommerce_store_address','','on');
INSERT INTO `wp_options` VALUES('149','woocommerce_store_address_2','','on');
INSERT INTO `wp_options` VALUES('150','woocommerce_store_city','','on');
INSERT INTO `wp_options` VALUES('151','woocommerce_default_country','CL','on');
INSERT INTO `wp_options` VALUES('152','woocommerce_store_postcode','','on');
INSERT INTO `wp_options` VALUES('153','woocommerce_allowed_countries','all','on');
INSERT INTO `wp_options` VALUES('154','woocommerce_all_except_countries','','on');
INSERT INTO `wp_options` VALUES('155','woocommerce_specific_allowed_countries','','on');
INSERT INTO `wp_options` VALUES('156','woocommerce_ship_to_countries','','on');
INSERT INTO `wp_options` VALUES('157','woocommerce_specific_ship_to_countries','','on');
INSERT INTO `wp_options` VALUES('158','woocommerce_default_customer_address','base','on');
INSERT INTO `wp_options` VALUES('159','woocommerce_address_autocomplete_enabled','no','on');
INSERT INTO `wp_options` VALUES('160','woocommerce_calc_taxes','yes','on');
INSERT INTO `wp_options` VALUES('161','woocommerce_enable_coupons','yes','on');
INSERT INTO `wp_options` VALUES('162','woocommerce_calc_discounts_sequentially','no','off');
INSERT INTO `wp_options` VALUES('163','woocommerce_currency','CLP','on');
INSERT INTO `wp_options` VALUES('164','woocommerce_currency_pos','left','on');
INSERT INTO `wp_options` VALUES('165','woocommerce_price_thousand_sep',',','on');
INSERT INTO `wp_options` VALUES('166','woocommerce_price_decimal_sep','.','on');
INSERT INTO `wp_options` VALUES('167','woocommerce_price_num_decimals','2','on');
INSERT INTO `wp_options` VALUES('168','woocommerce_shop_page_id','6','on');
INSERT INTO `wp_options` VALUES('169','woocommerce_cart_redirect_after_add','no','on');
INSERT INTO `wp_options` VALUES('170','woocommerce_enable_ajax_add_to_cart','yes','on');
INSERT INTO `wp_options` VALUES('171','woocommerce_placeholder_image','5','on');
INSERT INTO `wp_options` VALUES('172','woocommerce_weight_unit','lbs','on');
INSERT INTO `wp_options` VALUES('173','woocommerce_dimension_unit','in','on');
INSERT INTO `wp_options` VALUES('174','woocommerce_enable_reviews','yes','on');
INSERT INTO `wp_options` VALUES('175','woocommerce_review_rating_verification_label','yes','off');
INSERT INTO `wp_options` VALUES('176','woocommerce_review_rating_verification_required','no','off');
INSERT INTO `wp_options` VALUES('177','woocommerce_enable_review_rating','yes','on');
INSERT INTO `wp_options` VALUES('178','woocommerce_review_rating_required','yes','off');
INSERT INTO `wp_options` VALUES('179','woocommerce_manage_stock','yes','on');
INSERT INTO `wp_options` VALUES('180','woocommerce_hold_stock_minutes','60','off');
INSERT INTO `wp_options` VALUES('181','woocommerce_notify_low_stock','yes','off');
INSERT INTO `wp_options` VALUES('182','woocommerce_notify_no_stock','yes','off');
INSERT INTO `wp_options` VALUES('183','woocommerce_notify_backorder','yes','off');
INSERT INTO `wp_options` VALUES('184','woocommerce_stock_email_recipient','tiendappchile@gmail.com','off');
INSERT INTO `wp_options` VALUES('185','woocommerce_notify_low_stock_amount','2','off');
INSERT INTO `wp_options` VALUES('186','woocommerce_notify_no_stock_amount','0','on');
INSERT INTO `wp_options` VALUES('187','woocommerce_hide_out_of_stock_items','no','on');
INSERT INTO `wp_options` VALUES('188','woocommerce_stock_format','','on');
INSERT INTO `wp_options` VALUES('189','woocommerce_file_download_method','force','off');
INSERT INTO `wp_options` VALUES('190','woocommerce_downloads_redirect_fallback_allowed','no','off');
INSERT INTO `wp_options` VALUES('191','woocommerce_downloads_require_login','no','off');
INSERT INTO `wp_options` VALUES('192','woocommerce_downloads_grant_access_after_payment','yes','off');
INSERT INTO `wp_options` VALUES('193','woocommerce_downloads_deliver_inline','','off');
INSERT INTO `wp_options` VALUES('194','woocommerce_downloads_add_hash_to_filename','yes','on');
INSERT INTO `wp_options` VALUES('195','woocommerce_downloads_count_partial','yes','on');
INSERT INTO `wp_options` VALUES('197','woocommerce_attribute_lookup_direct_updates','no','on');
INSERT INTO `wp_options` VALUES('198','woocommerce_attribute_lookup_optimized_updates','no','on');
INSERT INTO `wp_options` VALUES('199','woocommerce_product_match_featured_image_by_sku','no','on');
INSERT INTO `wp_options` VALUES('200','woocommerce_prices_include_tax','yes','on');
INSERT INTO `wp_options` VALUES('201','woocommerce_tax_based_on','shipping','on');
INSERT INTO `wp_options` VALUES('202','woocommerce_shipping_tax_class','inherit','on');
INSERT INTO `wp_options` VALUES('203','woocommerce_tax_round_at_subtotal','no','on');
INSERT INTO `wp_options` VALUES('204','woocommerce_tax_classes','','on');
INSERT INTO `wp_options` VALUES('205','woocommerce_tax_display_shop','incl','on');
INSERT INTO `wp_options` VALUES('206','woocommerce_tax_display_cart','excl','on');
INSERT INTO `wp_options` VALUES('207','woocommerce_price_display_suffix','','on');
INSERT INTO `wp_options` VALUES('208','woocommerce_tax_total_display','itemized','off');
INSERT INTO `wp_options` VALUES('209','woocommerce_enable_shipping_calc','yes','off');
INSERT INTO `wp_options` VALUES('210','woocommerce_shipping_cost_requires_address','no','on');
INSERT INTO `wp_options` VALUES('211','woocommerce_shipping_hide_rates_when_free','no','off');
INSERT INTO `wp_options` VALUES('212','woocommerce_ship_to_destination','billing','off');
INSERT INTO `wp_options` VALUES('213','woocommerce_shipping_debug_mode','no','on');
INSERT INTO `wp_options` VALUES('214','woocommerce_enable_guest_checkout','yes','off');
INSERT INTO `wp_options` VALUES('215','woocommerce_enable_checkout_login_reminder','no','off');
INSERT INTO `wp_options` VALUES('216','woocommerce_enable_delayed_account_creation','no','off');
INSERT INTO `wp_options` VALUES('217','woocommerce_enable_signup_and_login_from_checkout','no','off');
INSERT INTO `wp_options` VALUES('218','woocommerce_enable_myaccount_registration','no','off');
INSERT INTO `wp_options` VALUES('219','woocommerce_registration_generate_password','yes','off');
INSERT INTO `wp_options` VALUES('220','woocommerce_registration_generate_username','yes','off');
INSERT INTO `wp_options` VALUES('221','woocommerce_erasure_request_removes_order_data','no','off');
INSERT INTO `wp_options` VALUES('222','woocommerce_erasure_request_removes_download_data','no','off');
INSERT INTO `wp_options` VALUES('223','woocommerce_allow_bulk_remove_personal_data','no','off');
INSERT INTO `wp_options` VALUES('224','woocommerce_registration_privacy_policy_text','Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].','on');
INSERT INTO `wp_options` VALUES('225','woocommerce_checkout_privacy_policy_text','Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].','on');
INSERT INTO `wp_options` VALUES('226','woocommerce_delete_inactive_accounts','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}','off');
INSERT INTO `wp_options` VALUES('227','woocommerce_trash_pending_orders','','off');
INSERT INTO `wp_options` VALUES('228','woocommerce_trash_failed_orders','','off');
INSERT INTO `wp_options` VALUES('229','woocommerce_trash_cancelled_orders','','off');
INSERT INTO `wp_options` VALUES('230','woocommerce_anonymize_refunded_orders','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}','off');
INSERT INTO `wp_options` VALUES('231','woocommerce_anonymize_completed_orders','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}','off');
INSERT INTO `wp_options` VALUES('232','woocommerce_email_from_address','tiendappchile@gmail.com','off');
INSERT INTO `wp_options` VALUES('233','woocommerce_email_reply_to_enabled','no','off');
INSERT INTO `wp_options` VALUES('234','woocommerce_email_reply_to_name','','off');
INSERT INTO `wp_options` VALUES('235','woocommerce_email_reply_to_address','','off');
INSERT INTO `wp_options` VALUES('236','woocommerce_email_header_image','','off');
INSERT INTO `wp_options` VALUES('237','woocommerce_email_header_image_width','120','on');
INSERT INTO `wp_options` VALUES('238','woocommerce_email_header_alignment','left','on');
INSERT INTO `wp_options` VALUES('239','woocommerce_email_font_family','Helvetica','on');
INSERT INTO `wp_options` VALUES('240','woocommerce_email_footer_text','{site_title}<br />{store_address}','off');
INSERT INTO `wp_options` VALUES('241','woocommerce_email_base_color','#720eec','off');
INSERT INTO `wp_options` VALUES('242','woocommerce_email_background_color','#f7f7f7','off');
INSERT INTO `wp_options` VALUES('243','woocommerce_email_body_background_color','#ffffff','off');
INSERT INTO `wp_options` VALUES('244','woocommerce_email_text_color','#3c3c3c','off');
INSERT INTO `wp_options` VALUES('245','woocommerce_email_footer_text_color','#3c3c3c','off');
INSERT INTO `wp_options` VALUES('246','woocommerce_email_auto_sync_with_theme','no','off');
INSERT INTO `wp_options` VALUES('247','woocommerce_pos_store_address','','on');
INSERT INTO `wp_options` VALUES('248','woocommerce_pos_store_phone','','on');
INSERT INTO `wp_options` VALUES('249','woocommerce_pos_store_email','tiendappchile@gmail.com','on');
INSERT INTO `wp_options` VALUES('250','woocommerce_pos_refund_returns_policy','','on');
INSERT INTO `wp_options` VALUES('251','woocommerce_cart_page_id','7','off');
INSERT INTO `wp_options` VALUES('252','woocommerce_checkout_page_id','8','off');
INSERT INTO `wp_options` VALUES('253','woocommerce_myaccount_page_id','9','off');
INSERT INTO `wp_options` VALUES('254','woocommerce_terms_page_id','','off');
INSERT INTO `wp_options` VALUES('255','woocommerce_force_ssl_checkout','no','on');
INSERT INTO `wp_options` VALUES('256','woocommerce_unforce_ssl_checkout','no','on');
INSERT INTO `wp_options` VALUES('257','woocommerce_checkout_pay_endpoint','order-pay','on');
INSERT INTO `wp_options` VALUES('258','woocommerce_checkout_order_received_endpoint','order-received','on');
INSERT INTO `wp_options` VALUES('259','woocommerce_myaccount_add_payment_method_endpoint','add-payment-method','on');
INSERT INTO `wp_options` VALUES('260','woocommerce_myaccount_delete_payment_method_endpoint','delete-payment-method','on');
INSERT INTO `wp_options` VALUES('261','woocommerce_myaccount_set_default_payment_method_endpoint','set-default-payment-method','on');
INSERT INTO `wp_options` VALUES('262','woocommerce_myaccount_orders_endpoint','orders','on');
INSERT INTO `wp_options` VALUES('263','woocommerce_myaccount_view_order_endpoint','view-order','on');
INSERT INTO `wp_options` VALUES('264','woocommerce_myaccount_downloads_endpoint','downloads','on');
INSERT INTO `wp_options` VALUES('265','woocommerce_myaccount_edit_account_endpoint','edit-account','on');
INSERT INTO `wp_options` VALUES('266','woocommerce_myaccount_edit_address_endpoint','edit-address','on');
INSERT INTO `wp_options` VALUES('267','woocommerce_myaccount_payment_methods_endpoint','payment-methods','on');
INSERT INTO `wp_options` VALUES('268','woocommerce_myaccount_lost_password_endpoint','lost-password','on');
INSERT INTO `wp_options` VALUES('269','woocommerce_logout_endpoint','customer-logout','on');
INSERT INTO `wp_options` VALUES('270','woocommerce_allow_tracking','no','on');
INSERT INTO `wp_options` VALUES('271','woocommerce_show_marketplace_suggestions','yes','off');
INSERT INTO `wp_options` VALUES('272','woocommerce_custom_orders_table_enabled','no','on');
INSERT INTO `wp_options` VALUES('273','woocommerce_analytics_enabled','yes','on');
INSERT INTO `wp_options` VALUES('274','woocommerce_feature_rate_limit_checkout_enabled','no','on');
INSERT INTO `wp_options` VALUES('275','woocommerce_feature_order_withdrawal_enabled','no','on');
INSERT INTO `wp_options` VALUES('276','woocommerce_queue_flush_rewrite_rules','no','auto');
INSERT INTO `wp_options` VALUES('277','woocommerce_feature_order_attribution_enabled','yes','on');
INSERT INTO `wp_options` VALUES('278','woocommerce_hpos_datastore_caching_enabled','no','on');
INSERT INTO `wp_options` VALUES('279','woocommerce_feature_remote_logging_enabled','yes','on');
INSERT INTO `wp_options` VALUES('280','woocommerce_feature_deferred_transactional_emails_enabled','no','on');
INSERT INTO `wp_options` VALUES('281','woocommerce_feature_customer_review_request_enabled','no','on');
INSERT INTO `wp_options` VALUES('282','woocommerce_feature_email_improvements_enabled','no','on');
INSERT INTO `wp_options` VALUES('283','_transient_timeout_wc_settings_email_improvements_reverted','1788493269','off');
INSERT INTO `wp_options` VALUES('284','_transient_wc_settings_email_improvements_reverted','yes','off');
INSERT INTO `wp_options` VALUES('285','woocommerce_email_improvements_disabled_count','1','auto');
INSERT INTO `wp_options` VALUES('286','woocommerce_email_improvements_first_disabled_at','2026-09-04 03:40:54','auto');
INSERT INTO `wp_options` VALUES('287','woocommerce_email_improvements_last_disabled_at','2026-09-04 03:40:54','auto');
INSERT INTO `wp_options` VALUES('288','woocommerce_feature_blueprint_enabled','yes','on');
INSERT INTO `wp_options` VALUES('289','woocommerce_feature_cost_of_goods_sold_enabled','no','on');
INSERT INTO `wp_options` VALUES('290','woocommerce_feature_product_gallery_videos_enabled','no','on');
INSERT INTO `wp_options` VALUES('291','woocommerce_hpos_fts_index_enabled','no','on');
INSERT INTO `wp_options` VALUES('292','woocommerce_feature_abandoned_cart_recovery_enabled','no','on');
INSERT INTO `wp_options` VALUES('293','woocommerce_feature_block_email_editor_enabled','no','on');
INSERT INTO `wp_options` VALUES('294','woocommerce_feature_wc_visual_attribute_enabled','no','on');
INSERT INTO `wp_options` VALUES('295','woocommerce_feature_mcp_integration_enabled','no','on');
INSERT INTO `wp_options` VALUES('296','woocommerce_feature_destroy-empty-sessions_enabled','no','on');
INSERT INTO `wp_options` VALUES('297','woocommerce_feature_rest_api_caching_enabled','no','on');
INSERT INTO `wp_options` VALUES('298','woocommerce_cart_save_for_later_enabled','no','on');
INSERT INTO `wp_options` VALUES('299','woocommerce_product_wishlist_enabled','no','on');
INSERT INTO `wp_options` VALUES('300','woocommerce_feature_product_instance_caching_enabled','no','on');
INSERT INTO `wp_options` VALUES('301','woocommerce_feature_block_editor_unified_assets_enabled','no','on');
INSERT INTO `wp_options` VALUES('302','woocommerce_single_image_width','600','on');
INSERT INTO `wp_options` VALUES('303','woocommerce_thumbnail_image_width','300','on');
INSERT INTO `wp_options` VALUES('304','woocommerce_checkout_highlight_required_fields','yes','on');
INSERT INTO `wp_options` VALUES('305','woocommerce_demo_store','no','off');
INSERT INTO `wp_options` VALUES('306','wc_downloads_approved_directories_mode','enabled','auto');
INSERT INTO `wp_options` VALUES('307','woocommerce_permalinks','a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}','auto');
INSERT INTO `wp_options` VALUES('308','_transient_wc_attribute_taxonomies','a:0:{}','on');
INSERT INTO `wp_options` VALUES('312','default_product_cat','15','auto');
INSERT INTO `wp_options` VALUES('313','woocommerce_refund_returns_page_id','10','auto');
INSERT INTO `wp_options` VALUES('314','_transient_timeout__wc_activation_redirect','1788493285','off');
INSERT INTO `wp_options` VALUES('315','_transient__wc_activation_redirect','1','off');
INSERT INTO `wp_options` VALUES('316','woocommerce_paypal_settings','a:25:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:85:\"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.\";s:5:\"email\";s:23:\"tiendappchile@gmail.com\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:14:\"paypal_buttons\";s:3:\"yes\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:9:\"image_url\";s:0:\"\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:23:\"tiendappchile@gmail.com\";s:14:\"identity_token\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";s:28:\"transact_onboarding_complete\";s:2:\"no\";s:12:\"_should_load\";s:2:\"no\";}','on');
INSERT INTO `wp_options` VALUES('317','woocommerce_version','11.1.0','auto');
INSERT INTO `wp_options` VALUES('318','woocommerce_db_version','11.1.0-1','auto');
INSERT INTO `wp_options` VALUES('319','woocommerce_store_id','febc6cf3-f228-4aa4-98bc-36515d7342f2','auto');
INSERT INTO `wp_options` VALUES('320','woocommerce_admin_install_timestamp','1788493255','auto');
INSERT INTO `wp_options` VALUES('321','woocommerce_inbox_variant_assignment','2','auto');
INSERT INTO `wp_options` VALUES('322','woocommerce_remote_variant_assignment','117','auto');
INSERT INTO `wp_options` VALUES('323','woocommerce_attribute_lookup_enabled','no','auto');
INSERT INTO `wp_options` VALUES('324','_transient_woocommerce_activated_plugin','woocommerce/woocommerce.php','on');
INSERT INTO `wp_options` VALUES('325','_transient_jetpack_autoloader_plugin_paths','a:1:{i:0;s:29:\"{{WP_PLUGIN_DIR}}/woocommerce\";}','on');
INSERT INTO `wp_options` VALUES('326','woocommerce_admin_notices','a:0:{}','auto');
INSERT INTO `wp_options` VALUES('327','woocommerce_maxmind_geolocation_settings','a:1:{s:15:\"database_prefix\";s:32:\"ZLS2AEEHkwZguCL8pmn2ANyElkzEkwhv\";}','on');
INSERT INTO `wp_options` VALUES('328','_transient_woocommerce_webhook_ids_status_active','a:0:{}','on');
INSERT INTO `wp_options` VALUES('329','widget_woocommerce_widget_cart','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES('330','widget_woocommerce_layered_nav_filters','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES('331','widget_woocommerce_layered_nav','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES('332','widget_woocommerce_price_filter','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES('333','widget_woocommerce_product_categories','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES('334','widget_woocommerce_product_search','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES('335','widget_woocommerce_product_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES('336','widget_woocommerce_products','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES('337','widget_woocommerce_recently_viewed_products','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES('338','widget_woocommerce_top_rated_products','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES('339','widget_woocommerce_recent_reviews','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES('340','widget_woocommerce_rating_filter','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES('341','widget_wc_brands_brand_description','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES('342','widget_woocommerce_brand_nav','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES('343','widget_wc_brands_brand_thumbnails','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES('345','_site_transient_timeout_woocommerce_blocks_patterns','1791085282','off');
INSERT INTO `wp_options` VALUES('346','_site_transient_woocommerce_blocks_patterns','a:2:{s:7:\"version\";s:6:\"11.1.0\";s:8:\"patterns\";a:41:{i:0;a:10:{s:5:\"title\";s:6:\"Banner\";s:4:\"slug\";s:25:\"woocommerce-blocks/banner\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:29:\"WooCommerce, featured-selling\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:10:\"banner.php\";}i:1;a:10:{s:5:\"title\";s:23:\"Coming Soon Entire Site\";s:4:\"slug\";s:35:\"woocommerce/coming-soon-entire-site\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:27:\"coming-soon-entire-site.php\";}i:2;a:10:{s:5:\"title\";s:22:\"Coming Soon Store Only\";s:4:\"slug\";s:34:\"woocommerce/coming-soon-store-only\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:26:\"coming-soon-store-only.php\";}i:3;a:10:{s:5:\"title\";s:11:\"Coming Soon\";s:4:\"slug\";s:23:\"woocommerce/coming-soon\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:15:\"coming-soon.php\";}i:4;a:10:{s:5:\"title\";s:29:\"Content Right with Image Left\";s:4:\"slug\";s:48:\"woocommerce-blocks/content-right-with-image-left\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:18:\"WooCommerce, About\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:28:\"content-right-image-left.php\";}i:5;a:10:{s:5:\"title\";s:29:\"Featured Category Cover Image\";s:4:\"slug\";s:48:\"woocommerce-blocks/featured-category-cover-image\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:18:\"WooCommerce, Intro\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:33:\"featured-category-cover-image.php\";}i:6;a:10:{s:5:\"title\";s:24:\"Featured Category Triple\";s:4:\"slug\";s:43:\"woocommerce-blocks/featured-category-triple\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:29:\"WooCommerce, featured-selling\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:28:\"featured-category-triple.php\";}i:7;a:10:{s:5:\"title\";s:12:\"Large Footer\";s:4:\"slug\";s:31:\"woocommerce-blocks/footer-large\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:25:\"core/template-part/footer\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:16:\"footer-large.php\";}i:8;a:10:{s:5:\"title\";s:23:\"Footer with Simple Menu\";s:4:\"slug\";s:37:\"woocommerce-blocks/footer-simple-menu\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:25:\"core/template-part/footer\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:22:\"footer-simple-menu.php\";}i:9;a:10:{s:5:\"title\";s:19:\"Footer with 3 Menus\";s:4:\"slug\";s:38:\"woocommerce-blocks/footer-with-3-menus\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:25:\"core/template-part/footer\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:23:\"footer-with-3-menus.php\";}i:10;a:10:{s:5:\"title\";s:28:\"Four Image Grid Content Left\";s:4:\"slug\";s:47:\"woocommerce-blocks/four-image-grid-content-left\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:18:\"WooCommerce, About\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:32:\"four-image-grid-content-left.php\";}i:11;a:10:{s:5:\"title\";s:20:\"Centered Header Menu\";s:4:\"slug\";s:39:\"woocommerce-blocks/header-centered-menu\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:25:\"core/template-part/header\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:27:\"header-centered-pattern.php\";}i:12;a:10:{s:5:\"title\";s:23:\"Distraction Free Header\";s:4:\"slug\";s:42:\"woocommerce-blocks/header-distraction-free\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:25:\"core/template-part/header\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:27:\"header-distraction-free.php\";}i:13;a:10:{s:5:\"title\";s:16:\"Essential Header\";s:4:\"slug\";s:35:\"woocommerce-blocks/header-essential\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:25:\"core/template-part/header\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:20:\"header-essential.php\";}i:14;a:10:{s:5:\"title\";s:12:\"Large Header\";s:4:\"slug\";s:31:\"woocommerce-blocks/header-large\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:25:\"core/template-part/header\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:16:\"header-large.php\";}i:15;a:10:{s:5:\"title\";s:14:\"Minimal Header\";s:4:\"slug\";s:33:\"woocommerce-blocks/header-minimal\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:25:\"core/template-part/header\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:18:\"header-minimal.php\";}i:16;a:10:{s:5:\"title\";s:46:\"Heading with Three Columns of Content and Link\";s:4:\"slug\";s:66:\"woocommerce-blocks/heading-with-three-columns-of-content-with-link\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:21:\"WooCommerce, Services\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:51:\"heading-with-three-columns-of-content-with-link.php\";}i:17;a:10:{s:5:\"title\";s:20:\"Hero Product 3 Split\";s:4:\"slug\";s:39:\"woocommerce-blocks/hero-product-3-split\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:29:\"WooCommerce, featured-selling\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:24:\"hero-product-3-split.php\";}i:18;a:10:{s:5:\"title\";s:23:\"Hero Product Chessboard\";s:4:\"slug\";s:42:\"woocommerce-blocks/hero-product-chessboard\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:29:\"WooCommerce, featured-selling\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:27:\"hero-product-chessboard.php\";}i:19;a:10:{s:5:\"title\";s:18:\"Hero Product Split\";s:4:\"slug\";s:37:\"woocommerce-blocks/hero-product-split\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:18:\"WooCommerce, Intro\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:22:\"hero-product-split.php\";}i:20;a:10:{s:5:\"title\";s:33:\"Centered Content with Image Below\";s:4:\"slug\";s:52:\"woocommerce-blocks/centered-content-with-image-below\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:18:\"WooCommerce, Intro\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:43:\"intro-centered-content-with-image-below.php\";}i:21;a:10:{s:5:\"title\";s:22:\"Just Arrived Full Hero\";s:4:\"slug\";s:41:\"woocommerce-blocks/just-arrived-full-hero\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:18:\"WooCommerce, Intro\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:26:\"just-arrived-full-hero.php\";}i:22;a:10:{s:5:\"title\";s:33:\"No Products Found - Clear Filters\";s:4:\"slug\";s:43:\"woocommerce/no-products-found-clear-filters\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:2:\"no\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:29:\"no-products-found-filters.php\";}i:23;a:10:{s:5:\"title\";s:17:\"No Products Found\";s:4:\"slug\";s:29:\"woocommerce/no-products-found\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:2:\"no\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:21:\"no-products-found.php\";}i:24;a:10:{s:5:\"title\";s:19:\"Default Coming Soon\";s:4:\"slug\";s:36:\"woocommerce/page-coming-soon-default\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:13:\"templateTypes\";s:11:\"coming-soon\";s:6:\"source\";s:28:\"page-coming-soon-default.php\";}i:25;a:10:{s:5:\"title\";s:25:\"Coming Soon Image Gallery\";s:4:\"slug\";s:42:\"woocommerce/page-coming-soon-image-gallery\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:13:\"templateTypes\";s:11:\"coming-soon\";s:6:\"source\";s:34:\"page-coming-soon-image-gallery.php\";}i:26;a:10:{s:5:\"title\";s:30:\"Coming Soon Minimal Left Image\";s:4:\"slug\";s:47:\"woocommerce/page-coming-soon-minimal-left-image\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:13:\"templateTypes\";s:11:\"coming-soon\";s:6:\"source\";s:39:\"page-coming-soon-minimal-left-image.php\";}i:27;a:10:{s:5:\"title\";s:24:\"Coming Soon Modern Black\";s:4:\"slug\";s:41:\"woocommerce/page-coming-soon-modern-black\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:13:\"templateTypes\";s:11:\"coming-soon\";s:6:\"source\";s:33:\"page-coming-soon-modern-black.php\";}i:28;a:10:{s:5:\"title\";s:29:\"Coming Soon Split Right Image\";s:4:\"slug\";s:46:\"woocommerce/page-coming-soon-split-right-image\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:13:\"templateTypes\";s:11:\"coming-soon\";s:6:\"source\";s:38:\"page-coming-soon-split-right-image.php\";}i:29;a:10:{s:5:\"title\";s:34:\"Coming Soon with Header and Footer\";s:4:\"slug\";s:47:\"woocommerce/page-coming-soon-with-header-footer\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:13:\"templateTypes\";s:11:\"coming-soon\";s:6:\"source\";s:39:\"page-coming-soon-with-header-footer.php\";}i:30;a:10:{s:5:\"title\";s:28:\"Product Collection 3 Columns\";s:4:\"slug\";s:47:\"woocommerce-blocks/product-collection-3-columns\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:32:\"product-collection-3-columns.php\";}i:31;a:10:{s:5:\"title\";s:28:\"Product Collection 4 Columns\";s:4:\"slug\";s:47:\"woocommerce-blocks/product-collection-4-columns\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:29:\"WooCommerce, featured-selling\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:32:\"product-collection-4-columns.php\";}i:32;a:10:{s:5:\"title\";s:28:\"Product Collection 5 Columns\";s:4:\"slug\";s:47:\"woocommerce-blocks/product-collection-5-columns\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:29:\"WooCommerce, featured-selling\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:32:\"product-collection-5-columns.php\";}i:33;a:10:{s:5:\"title\";s:47:\"Product Collection: Featured Products 5 Columns\";s:4:\"slug\";s:65:\"woocommerce-blocks/product-collection-featured-products-5-columns\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:29:\"WooCommerce, featured-selling\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:50:\"product-collection-featured-products-5-columns.php\";}i:34;a:10:{s:5:\"title\";s:15:\"Product Gallery\";s:4:\"slug\";s:48:\"woocommerce-blocks/product-query-product-gallery\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:29:\"WooCommerce, featured-selling\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:36:\"core/query/woocommerce/product-query\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:33:\"product-query-product-gallery.php\";}i:35;a:10:{s:5:\"title\";s:14:\"Product Search\";s:4:\"slug\";s:31:\"woocommerce/product-search-form\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:2:\"no\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:23:\"product-search-form.php\";}i:36;a:10:{s:5:\"title\";s:16:\"Related Products\";s:4:\"slug\";s:35:\"woocommerce-blocks/related-products\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:20:\"related-products.php\";}i:37;a:10:{s:5:\"title\";s:33:\"Social: Follow Us on Social Media\";s:4:\"slug\";s:51:\"woocommerce-blocks/social-follow-us-in-social-media\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:25:\"WooCommerce, social-media\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:36:\"social-follow-us-in-social-media.php\";}i:38;a:10:{s:5:\"title\";s:22:\"Testimonials 3 Columns\";s:4:\"slug\";s:41:\"woocommerce-blocks/testimonials-3-columns\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:20:\"WooCommerce, Reviews\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:26:\"testimonials-3-columns.php\";}i:39;a:10:{s:5:\"title\";s:18:\"Testimonial Single\";s:4:\"slug\";s:38:\"woocommerce-blocks/testimonials-single\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:20:\"WooCommerce, Reviews\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:23:\"testimonials-single.php\";}i:40;a:10:{s:5:\"title\";s:37:\"Three Columns with Images and Content\";s:4:\"slug\";s:56:\"woocommerce-blocks/three-columns-with-images-and-content\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:21:\"WooCommerce, Services\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:41:\"three-columns-with-images-and-content.php\";}}}','off');
INSERT INTO `wp_options` VALUES('347','woocommerce_checkout_phone_field','optional','auto');
INSERT INTO `wp_options` VALUES('348','woocommerce_checkout_company_field','hidden','auto');
INSERT INTO `wp_options` VALUES('349','woocommerce_checkout_address_2_field','optional','auto');
INSERT INTO `wp_options` VALUES('350','_transient_timeout__woocommerce_helper_subscriptions','1788494183','off');
INSERT INTO `wp_options` VALUES('351','_transient__woocommerce_helper_subscriptions','a:0:{}','off');
INSERT INTO `wp_options` VALUES('354','hupkec_settings','a:0:{}','auto');
INSERT INTO `wp_options` VALUES('355','hupkec_modules','a:3:{s:7:\"comunas\";i:1;s:8:\"shipping\";i:0;s:8:\"checkout\";i:0;}','auto');
INSERT INTO `wp_options` VALUES('356','hupkec_fields','a:3:{s:7:\"billing\";a:10:{i:0;a:9:{s:3:\"key\";s:15:\"billing_country\";s:4:\"type\";s:7:\"country\";s:5:\"label\";s:15:\"País / Región\";s:11:\"placeholder\";s:0:\"\";s:8:\"required\";b:1;s:7:\"enabled\";b:1;s:5:\"width\";s:4:\"wide\";s:6:\"custom\";b:0;s:6:\"locked\";b:1;}i:1;a:9:{s:3:\"key\";s:18:\"billing_first_name\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:6:\"Nombre\";s:11:\"placeholder\";s:0:\"\";s:8:\"required\";b:1;s:7:\"enabled\";b:1;s:5:\"width\";s:5:\"first\";s:6:\"custom\";b:0;s:6:\"locked\";b:0;}i:2;a:9:{s:3:\"key\";s:17:\"billing_last_name\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:9:\"Apellidos\";s:11:\"placeholder\";s:0:\"\";s:8:\"required\";b:1;s:7:\"enabled\";b:1;s:5:\"width\";s:4:\"last\";s:6:\"custom\";b:0;s:6:\"locked\";b:0;}i:3;a:9:{s:3:\"key\";s:11:\"billing_rut\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:9:\"RUT / DNI\";s:11:\"placeholder\";s:16:\"Ej: 12.345.678-9\";s:8:\"required\";b:1;s:7:\"enabled\";b:1;s:5:\"width\";s:4:\"wide\";s:6:\"custom\";b:1;s:6:\"locked\";b:0;}i:4;a:9:{s:3:\"key\";s:17:\"billing_address_1\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:10:\"Dirección\";s:11:\"placeholder\";s:28:\"Nombre de la calle y número\";s:8:\"required\";b:1;s:7:\"enabled\";b:1;s:5:\"width\";s:4:\"wide\";s:6:\"custom\";b:0;s:6:\"locked\";b:0;}i:5;a:9:{s:3:\"key\";s:17:\"billing_address_2\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:30:\"Apartamento, habitación, etc.\";s:11:\"placeholder\";s:41:\"Apartamento, habitación, etc. (opcional)\";s:8:\"required\";b:0;s:7:\"enabled\";b:1;s:5:\"width\";s:4:\"wide\";s:6:\"custom\";b:0;s:6:\"locked\";b:0;}i:6;a:9:{s:3:\"key\";s:13:\"billing_state\";s:4:\"type\";s:5:\"state\";s:5:\"label\";s:7:\"Región\";s:11:\"placeholder\";s:0:\"\";s:8:\"required\";b:1;s:7:\"enabled\";b:1;s:5:\"width\";s:4:\"wide\";s:6:\"custom\";b:0;s:6:\"locked\";b:0;}i:7;a:9:{s:3:\"key\";s:12:\"billing_city\";s:4:\"type\";s:4:\"city\";s:5:\"label\";s:6:\"Comuna\";s:11:\"placeholder\";s:0:\"\";s:8:\"required\";b:1;s:7:\"enabled\";b:1;s:5:\"width\";s:4:\"wide\";s:6:\"custom\";b:0;s:6:\"locked\";b:0;}i:8;a:9:{s:3:\"key\";s:13:\"billing_phone\";s:4:\"type\";s:3:\"tel\";s:5:\"label\";s:9:\"Teléfono\";s:11:\"placeholder\";s:0:\"\";s:8:\"required\";b:1;s:7:\"enabled\";b:1;s:5:\"width\";s:4:\"wide\";s:6:\"custom\";b:0;s:6:\"locked\";b:0;}i:9;a:9:{s:3:\"key\";s:13:\"billing_email\";s:4:\"type\";s:5:\"email\";s:5:\"label\";s:19:\"Correo electrónico\";s:11:\"placeholder\";s:0:\"\";s:8:\"required\";b:1;s:7:\"enabled\";b:1;s:5:\"width\";s:4:\"wide\";s:6:\"custom\";b:0;s:6:\"locked\";b:0;}}s:8:\"shipping\";a:9:{i:0;a:9:{s:3:\"key\";s:16:\"shipping_country\";s:4:\"type\";s:7:\"country\";s:5:\"label\";s:15:\"País / Región\";s:11:\"placeholder\";s:0:\"\";s:8:\"required\";b:1;s:7:\"enabled\";b:1;s:5:\"width\";s:4:\"wide\";s:6:\"custom\";b:0;s:6:\"locked\";b:1;}i:1;a:9:{s:3:\"key\";s:19:\"shipping_first_name\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:6:\"Nombre\";s:11:\"placeholder\";s:0:\"\";s:8:\"required\";b:1;s:7:\"enabled\";b:1;s:5:\"width\";s:5:\"first\";s:6:\"custom\";b:0;s:6:\"locked\";b:0;}i:2;a:9:{s:3:\"key\";s:18:\"shipping_last_name\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:9:\"Apellidos\";s:11:\"placeholder\";s:0:\"\";s:8:\"required\";b:1;s:7:\"enabled\";b:1;s:5:\"width\";s:4:\"last\";s:6:\"custom\";b:0;s:6:\"locked\";b:0;}i:3;a:9:{s:3:\"key\";s:12:\"shipping_rut\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:9:\"RUT / DNI\";s:11:\"placeholder\";s:16:\"Ej: 12.345.678-9\";s:8:\"required\";b:1;s:7:\"enabled\";b:1;s:5:\"width\";s:4:\"wide\";s:6:\"custom\";b:1;s:6:\"locked\";b:0;}i:4;a:9:{s:3:\"key\";s:18:\"shipping_address_1\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:10:\"Dirección\";s:11:\"placeholder\";s:28:\"Nombre de la calle y número\";s:8:\"required\";b:1;s:7:\"enabled\";b:1;s:5:\"width\";s:4:\"wide\";s:6:\"custom\";b:0;s:6:\"locked\";b:0;}i:5;a:9:{s:3:\"key\";s:18:\"shipping_address_2\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:30:\"Apartamento, habitación, etc.\";s:11:\"placeholder\";s:41:\"Apartamento, habitación, etc. (opcional)\";s:8:\"required\";b:0;s:7:\"enabled\";b:1;s:5:\"width\";s:4:\"wide\";s:6:\"custom\";b:0;s:6:\"locked\";b:0;}i:6;a:9:{s:3:\"key\";s:14:\"shipping_state\";s:4:\"type\";s:5:\"state\";s:5:\"label\";s:7:\"Región\";s:11:\"placeholder\";s:0:\"\";s:8:\"required\";b:1;s:7:\"enabled\";b:1;s:5:\"width\";s:4:\"wide\";s:6:\"custom\";b:0;s:6:\"locked\";b:0;}i:7;a:9:{s:3:\"key\";s:13:\"shipping_city\";s:4:\"type\";s:4:\"city\";s:5:\"label\";s:6:\"Comuna\";s:11:\"placeholder\";s:0:\"\";s:8:\"required\";b:1;s:7:\"enabled\";b:1;s:5:\"width\";s:4:\"wide\";s:6:\"custom\";b:0;s:6:\"locked\";b:0;}i:8;a:9:{s:3:\"key\";s:14:\"shipping_phone\";s:4:\"type\";s:3:\"tel\";s:5:\"label\";s:9:\"Teléfono\";s:11:\"placeholder\";s:0:\"\";s:8:\"required\";b:1;s:7:\"enabled\";b:1;s:5:\"width\";s:4:\"wide\";s:6:\"custom\";b:0;s:6:\"locked\";b:0;}}s:10:\"additional\";a:1:{i:0;a:9:{s:3:\"key\";s:14:\"order_comments\";s:4:\"type\";s:8:\"textarea\";s:5:\"label\";s:16:\"Notas del pedido\";s:11:\"placeholder\";s:69:\"Notas sobre tu pedido, por ejemplo, notas especiales para la entrega.\";s:8:\"required\";b:0;s:7:\"enabled\";b:1;s:5:\"width\";s:4:\"wide\";s:6:\"custom\";b:0;s:6:\"locked\";b:0;}}}','auto');
INSERT INTO `wp_options` VALUES('357','_transient_shipping-transient-version','1788493319','on');
INSERT INTO `wp_options` VALUES('358','hupkec_wc_global_zone_created','1','auto');
INSERT INTO `wp_options` VALUES('359','_transient_timeout_hupkec_zone_verified','1788496919','off');
INSERT INTO `wp_options` VALUES('360','_transient_hupkec_zone_verified','1','off');
INSERT INTO `wp_options` VALUES('362','woocommerce_custom_orders_table_created','no','auto');
INSERT INTO `wp_options` VALUES('365','current_theme','Storefront','auto');
INSERT INTO `wp_options` VALUES('366','theme_switched','','auto');
INSERT INTO `wp_options` VALUES('367','_site_transient_timeout_wp_theme_files_patterns-60a97ea721725f34628b656c09b1dd75','1788495182','off');
INSERT INTO `wp_options` VALUES('368','_site_transient_wp_theme_files_patterns-60a97ea721725f34628b656c09b1dd75','a:2:{s:7:\"version\";s:5:\"4.6.2\";s:8:\"patterns\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES('369','theme_mods_storefront','a:2:{s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','auto');
INSERT INTO `wp_options` VALUES('370','woocommerce_catalog_rows','4','auto');
INSERT INTO `wp_options` VALUES('371','woocommerce_catalog_columns','3','auto');
INSERT INTO `wp_options` VALUES('372','woocommerce_maybe_regenerate_images_hash','27acde77266b4d2a3491118955cb3f66','auto');
INSERT INTO `wp_options` VALUES('374','_transient_product_query-transient-version','1788494212','on');
INSERT INTO `wp_options` VALUES('375','current_theme_supports_woocommerce','yes','auto');
INSERT INTO `wp_options` VALUES('376','_site_transient_timeout_wp_theme_files_patterns-8e680f31eab1569f09db988e27d50867','1788495385','off');
INSERT INTO `wp_options` VALUES('377','_site_transient_wp_theme_files_patterns-8e680f31eab1569f09db988e27d50867','a:2:{s:7:\"version\";s:5:\"4.6.2\";s:8:\"patterns\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES('379','jetpack_connection_active_plugins','a:1:{s:11:\"woocommerce\";a:1:{s:4:\"name\";s:11:\"WooCommerce\";}}','auto');
INSERT INTO `wp_options` VALUES('381','recovery_keys','a:0:{}','off');
INSERT INTO `wp_options` VALUES('382','_transient_timeout_as_is_ensure_recurring_actions_scheduled','1788497676','off');
INSERT INTO `wp_options` VALUES('383','_transient_as_is_ensure_recurring_actions_scheduled','1','off');
INSERT INTO `wp_options` VALUES('384','wc_variation_gallery_migration_completed_at','1788494076','auto');
INSERT INTO `wp_options` VALUES('385','action_scheduler_migration_status','complete','auto');
INSERT INTO `wp_options` VALUES('386','as_has_wp_comment_logs','no','on');
INSERT INTO `wp_options` VALUES('387','jetpack_options','a:1:{s:14:\"last_heartbeat\";i:1788494076;}','auto');
INSERT INTO `wp_options` VALUES('404','product_cat_children','a:4:{i:17;a:4:{i:0;i:21;i:1;i:22;i:2;i:23;i:3;i:24;}i:18;a:3:{i:0;i:25;i:1;i:26;i:2;i:27;}i:19;a:3:{i:0;i:28;i:1;i:29;i:2;i:30;}i:20;a:2:{i:0;i:31;i:1;i:32;}}','auto');
INSERT INTO `wp_options` VALUES('405','_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1788494142;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:51:\"hup-kit-ecommerce-chile/hup-kit-ecommerce-chile.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:37:\"w.org/plugins/hup-kit-ecommerce-chile\";s:4:\"slug\";s:23:\"hup-kit-ecommerce-chile\";s:6:\"plugin\";s:51:\"hup-kit-ecommerce-chile/hup-kit-ecommerce-chile.php\";s:11:\"new_version\";s:5:\"1.1.1\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/hup-kit-ecommerce-chile/\";s:7:\"package\";s:71:\"http://downloads.wordpress.org/plugin/hup-kit-ecommerce-chile.1.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/hup-kit-ecommerce-chile/assets/icon-256x256.png?rev=3617822\";s:2:\"1x\";s:76:\"https://ps.w.org/hup-kit-ecommerce-chile/assets/icon-256x256.png?rev=3617822\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:78:\"https://ps.w.org/hup-kit-ecommerce-chile/assets/banner-772x250.png?rev=3617822\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:6:\"11.1.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/plugin/woocommerce.11.1.0.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:56:\"https://ps.w.org/woocommerce/assets/icon.svg?rev=3640790\";s:3:\"svg\";s:56:\"https://ps.w.org/woocommerce/assets/icon.svg?rev=3640790\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=3640790\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=3640790\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"7.0\";}}s:7:\"checked\";a:2:{s:51:\"hup-kit-ecommerce-chile/hup-kit-ecommerce-chile.php\";s:5:\"1.1.1\";s:27:\"woocommerce/woocommerce.php\";s:6:\"11.1.0\";}}','off');
INSERT INTO `wp_options` VALUES('408','_transient_product-transient-version','1788494212','on');
INSERT INTO `wp_options` VALUES('409','woocommerce_task_list_tracked_completed_tasks','a:1:{i:0;s:8:\"products\";}','auto');
INSERT INTO `wp_options` VALUES('474','_transient_woocommerce_product_task_has_product_transient','yes','on');
INSERT INTO `wp_options` VALUES('475','_transient_timeout_wc_term_counts','1791086212','off');
INSERT INTO `wp_options` VALUES('476','_transient_wc_term_counts','a:10:{s:14:\"15_product_cat\";i:1;s:14:\"23_product_cat\";i:4;s:14:\"22_product_cat\";i:4;s:14:\"24_product_cat\";i:1;s:14:\"25_product_cat\";i:2;s:14:\"26_product_cat\";i:3;s:14:\"27_product_cat\";i:5;s:14:\"28_product_cat\";i:5;s:14:\"29_product_cat\";i:3;s:14:\"30_product_cat\";i:2;}','off');
INSERT INTO `wp_options` VALUES('477','_transient_timeout_wc_related_44','1788580620','off');
INSERT INTO `wp_options` VALUES('478','_transient_wc_related_44','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=44\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES('480','_transient_timeout_wc_related_43','1788580620','off');
INSERT INTO `wp_options` VALUES('481','_transient_wc_related_43','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=43\";a:2:{i:0;s:2:\"36\";i:1;s:2:\"39\";}}','off');
INSERT INTO `wp_options` VALUES('482','_transient_timeout_wc_related_42','1788580620','off');
INSERT INTO `wp_options` VALUES('483','_transient_wc_related_42','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=42\";a:1:{i:0;s:2:\"41\";}}','off');
INSERT INTO `wp_options` VALUES('484','_transient_timeout_wc_related_41','1788580620','off');
INSERT INTO `wp_options` VALUES('485','_transient_wc_related_41','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=41\";a:1:{i:0;s:2:\"42\";}}','off');
INSERT INTO `wp_options` VALUES('486','_transient_timeout_wc_related_40','1788580620','off');
INSERT INTO `wp_options` VALUES('487','_transient_wc_related_40','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=40\";a:4:{i:0;s:2:\"34\";i:1;s:2:\"35\";i:2;s:2:\"37\";i:3;s:2:\"38\";}}','off');
INSERT INTO `wp_options` VALUES('488','_transient_timeout_wc_related_39','1788580620','off');
INSERT INTO `wp_options` VALUES('489','_transient_wc_related_39','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=39\";a:2:{i:0;s:2:\"36\";i:1;s:2:\"43\";}}','off');
INSERT INTO `wp_options` VALUES('490','_transient_timeout_wc_related_38','1788580620','off');
INSERT INTO `wp_options` VALUES('491','_transient_wc_related_38','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=38\";a:4:{i:0;s:2:\"34\";i:1;s:2:\"35\";i:2;s:2:\"37\";i:3;s:2:\"40\";}}','off');
INSERT INTO `wp_options` VALUES('492','_transient_timeout_wc_related_37','1788580620','off');
INSERT INTO `wp_options` VALUES('493','_transient_wc_related_37','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=37\";a:4:{i:0;s:2:\"34\";i:1;s:2:\"35\";i:2;s:2:\"38\";i:3;s:2:\"40\";}}','off');
INSERT INTO `wp_options` VALUES('494','_transient_timeout_wc_related_36','1788580620','off');
INSERT INTO `wp_options` VALUES('495','_transient_wc_related_36','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=36\";a:2:{i:0;s:2:\"39\";i:1;s:2:\"43\";}}','off');
INSERT INTO `wp_options` VALUES('496','_transient_timeout_wc_related_35','1788580620','off');
INSERT INTO `wp_options` VALUES('497','_transient_wc_related_35','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=35\";a:4:{i:0;s:2:\"34\";i:1;s:2:\"37\";i:2;s:2:\"38\";i:3;s:2:\"40\";}}','off');
INSERT INTO `wp_options` VALUES('498','_transient_timeout_wc_related_34','1788580620','off');
INSERT INTO `wp_options` VALUES('499','_transient_wc_related_34','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=34\";a:4:{i:0;s:2:\"35\";i:1;s:2:\"37\";i:2;s:2:\"38\";i:3;s:2:\"40\";}}','off');
INSERT INTO `wp_options` VALUES('500','_transient_timeout_wc_related_33','1788580620','off');
INSERT INTO `wp_options` VALUES('501','_transient_wc_related_33','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=33\";a:2:{i:0;s:2:\"25\";i:1;s:2:\"26\";}}','off');
INSERT INTO `wp_options` VALUES('502','_transient_timeout_wc_related_32','1788580621','off');
INSERT INTO `wp_options` VALUES('503','_transient_wc_related_32','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=32\";a:4:{i:0;s:2:\"27\";i:1;s:2:\"28\";i:2;s:2:\"29\";i:3;s:2:\"31\";}}','off');
INSERT INTO `wp_options` VALUES('504','_transient_timeout_wc_related_31','1788580621','off');
INSERT INTO `wp_options` VALUES('505','_transient_wc_related_31','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=31\";a:4:{i:0;s:2:\"27\";i:1;s:2:\"28\";i:2;s:2:\"29\";i:3;s:2:\"32\";}}','off');
INSERT INTO `wp_options` VALUES('506','_transient_timeout_wc_related_30','1788580621','off');
INSERT INTO `wp_options` VALUES('507','_transient_wc_related_30','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=30\";a:1:{i:0;s:2:\"24\";}}','off');
INSERT INTO `wp_options` VALUES('508','_transient_timeout_wc_related_29','1788580621','off');
INSERT INTO `wp_options` VALUES('509','_transient_wc_related_29','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=29\";a:4:{i:0;s:2:\"27\";i:1;s:2:\"28\";i:2;s:2:\"31\";i:3;s:2:\"32\";}}','off');
INSERT INTO `wp_options` VALUES('510','_transient_timeout_wc_related_28','1788580621','off');
INSERT INTO `wp_options` VALUES('511','_transient_wc_related_28','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=28\";a:4:{i:0;s:2:\"27\";i:1;s:2:\"29\";i:2;s:2:\"31\";i:3;s:2:\"32\";}}','off');
INSERT INTO `wp_options` VALUES('512','_transient_timeout_wc_related_27','1788580621','off');
INSERT INTO `wp_options` VALUES('513','_transient_wc_related_27','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=27\";a:4:{i:0;s:2:\"28\";i:1;s:2:\"29\";i:2;s:2:\"31\";i:3;s:2:\"32\";}}','off');
INSERT INTO `wp_options` VALUES('514','_transient_timeout_wc_related_26','1788580621','off');
INSERT INTO `wp_options` VALUES('515','_transient_wc_related_26','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=26\";a:2:{i:0;s:2:\"25\";i:1;s:2:\"33\";}}','off');
INSERT INTO `wp_options` VALUES('516','_transient_timeout_wc_related_25','1788580621','off');
INSERT INTO `wp_options` VALUES('517','_transient_wc_related_25','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=25\";a:2:{i:0;s:2:\"26\";i:1;s:2:\"33\";}}','off');
INSERT INTO `wp_options` VALUES('518','_transient_timeout_wc_related_24','1788580621','off');
INSERT INTO `wp_options` VALUES('519','_transient_wc_related_24','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=24\";a:1:{i:0;s:2:\"30\";}}','off');
INSERT INTO `wp_options` VALUES('520','_transient_timeout_wc_related_23','1788580621','off');
INSERT INTO `wp_options` VALUES('521','_transient_wc_related_23','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=23\";a:3:{i:0;s:2:\"16\";i:1;s:2:\"17\";i:2;s:2:\"18\";}}','off');
INSERT INTO `wp_options` VALUES('522','_transient_timeout_wc_related_22','1788580621','off');
INSERT INTO `wp_options` VALUES('523','_transient_wc_related_22','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=22\";a:3:{i:0;s:2:\"15\";i:1;s:2:\"19\";i:2;s:2:\"20\";}}','off');
INSERT INTO `wp_options` VALUES('524','_transient_timeout_wc_related_21','1788580621','off');
INSERT INTO `wp_options` VALUES('525','_transient_wc_related_21','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=21\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES('526','_transient_timeout_wc_related_20','1788580621','off');
INSERT INTO `wp_options` VALUES('527','_transient_wc_related_20','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=20\";a:3:{i:0;s:2:\"15\";i:1;s:2:\"19\";i:2;s:2:\"22\";}}','off');
INSERT INTO `wp_options` VALUES('528','_transient_timeout_wc_related_19','1788580621','off');
INSERT INTO `wp_options` VALUES('529','_transient_wc_related_19','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=19\";a:3:{i:0;s:2:\"15\";i:1;s:2:\"20\";i:2;s:2:\"22\";}}','off');
INSERT INTO `wp_options` VALUES('530','_transient_timeout_wc_related_18','1788580621','off');
INSERT INTO `wp_options` VALUES('531','_transient_wc_related_18','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=18\";a:3:{i:0;s:2:\"16\";i:1;s:2:\"17\";i:2;s:2:\"23\";}}','off');
INSERT INTO `wp_options` VALUES('532','_transient_timeout_wc_related_17','1788580621','off');
INSERT INTO `wp_options` VALUES('533','_transient_wc_related_17','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=17\";a:3:{i:0;s:2:\"16\";i:1;s:2:\"18\";i:2;s:2:\"23\";}}','off');
INSERT INTO `wp_options` VALUES('534','_transient_timeout_wc_related_16','1788580621','off');
INSERT INTO `wp_options` VALUES('535','_transient_wc_related_16','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=16\";a:3:{i:0;s:2:\"17\";i:1;s:2:\"18\";i:2;s:2:\"23\";}}','off');
INSERT INTO `wp_options` VALUES('536','_transient_timeout_wc_related_15','1788580621','off');
INSERT INTO `wp_options` VALUES('537','_transient_wc_related_15','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=15\";a:3:{i:0;s:2:\"19\";i:1;s:2:\"20\";i:2;s:2:\"22\";}}','off');
INSERT INTO `wp_options` VALUES('538','_transient_is_multi_author','0','on');

-- Tabla: wp_postmeta
DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=587 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_postmeta` VALUES('1','2','_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES('2','3','_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES('3','5','_wp_attached_file','woocommerce-placeholder.webp');
INSERT INTO `wp_postmeta` VALUES('4','5','_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:28:\"woocommerce-placeholder.webp\";s:8:\"filesize\";i:9892;s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:36:\"woocommerce-placeholder-324x324.webp\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:1846;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:36:\"woocommerce-placeholder-100x100.webp\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:868;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:36:\"woocommerce-placeholder-416x416.webp\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:2340;}s:6:\"medium\";a:5:{s:4:\"file\";s:36:\"woocommerce-placeholder-300x300.webp\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:1362;}s:5:\"large\";a:5:{s:4:\"file\";s:38:\"woocommerce-placeholder-1024x1024.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:6032;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:36:\"woocommerce-placeholder-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:662;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:36:\"woocommerce-placeholder-768x768.webp\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:4240;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES('5','11','_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES('6','11','_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES('7','11','_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES('8','11','_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES('9','11','_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES('10','11','_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES('11','11','_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES('12','11','_menu_item_url','https://facebook.com');
INSERT INTO `wp_postmeta` VALUES('13','12','_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES('14','12','_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES('15','12','_menu_item_object_id','12');
INSERT INTO `wp_postmeta` VALUES('16','12','_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES('17','12','_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES('18','12','_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES('19','12','_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES('20','12','_menu_item_url','https://instagram.com');
INSERT INTO `wp_postmeta` VALUES('21','13','_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES('22','13','_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES('23','13','_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES('24','13','_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES('25','13','_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES('26','13','_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES('27','13','_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES('28','13','_menu_item_url','https://tiktok.com');
INSERT INTO `wp_postmeta` VALUES('47','15','_sku','MAQ-002');
INSERT INTO `wp_postmeta` VALUES('48','15','_regular_price','7990');
INSERT INTO `wp_postmeta` VALUES('49','15','total_sales','0');
INSERT INTO `wp_postmeta` VALUES('50','15','_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES('51','15','_tax_class','');
INSERT INTO `wp_postmeta` VALUES('52','15','_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES('53','15','_backorders','no');
INSERT INTO `wp_postmeta` VALUES('54','15','_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES('55','15','_virtual','no');
INSERT INTO `wp_postmeta` VALUES('56','15','_downloadable','no');
INSERT INTO `wp_postmeta` VALUES('57','15','_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES('58','15','_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES('59','15','_stock','40');
INSERT INTO `wp_postmeta` VALUES('60','15','_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES('61','15','_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES('62','15','_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES('63','15','_product_version','11.1.0');
INSERT INTO `wp_postmeta` VALUES('64','15','_price','7990');
INSERT INTO `wp_postmeta` VALUES('65','16','_sku','MAQ-003');
INSERT INTO `wp_postmeta` VALUES('66','16','_regular_price','6990');
INSERT INTO `wp_postmeta` VALUES('67','16','total_sales','0');
INSERT INTO `wp_postmeta` VALUES('68','16','_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES('69','16','_tax_class','');
INSERT INTO `wp_postmeta` VALUES('70','16','_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES('71','16','_backorders','no');
INSERT INTO `wp_postmeta` VALUES('72','16','_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES('73','16','_virtual','no');
INSERT INTO `wp_postmeta` VALUES('74','16','_downloadable','no');
INSERT INTO `wp_postmeta` VALUES('75','16','_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES('76','16','_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES('77','16','_stock','35');
INSERT INTO `wp_postmeta` VALUES('78','16','_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES('79','16','_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES('80','16','_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES('81','16','_product_version','11.1.0');
INSERT INTO `wp_postmeta` VALUES('82','16','_price','6990');
INSERT INTO `wp_postmeta` VALUES('83','17','_sku','MAQ-004');
INSERT INTO `wp_postmeta` VALUES('84','17','_regular_price','12990');
INSERT INTO `wp_postmeta` VALUES('85','17','total_sales','0');
INSERT INTO `wp_postmeta` VALUES('86','17','_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES('87','17','_tax_class','');
INSERT INTO `wp_postmeta` VALUES('88','17','_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES('89','17','_backorders','no');
INSERT INTO `wp_postmeta` VALUES('90','17','_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES('91','17','_virtual','no');
INSERT INTO `wp_postmeta` VALUES('92','17','_downloadable','no');
INSERT INTO `wp_postmeta` VALUES('93','17','_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES('94','17','_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES('95','17','_stock','20');
INSERT INTO `wp_postmeta` VALUES('96','17','_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES('97','17','_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES('98','17','_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES('99','17','_product_version','11.1.0');
INSERT INTO `wp_postmeta` VALUES('100','17','_price','12990');
INSERT INTO `wp_postmeta` VALUES('101','18','_sku','MAQ-005');
INSERT INTO `wp_postmeta` VALUES('102','18','_regular_price','5990');
INSERT INTO `wp_postmeta` VALUES('103','18','total_sales','0');
INSERT INTO `wp_postmeta` VALUES('104','18','_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES('105','18','_tax_class','');
INSERT INTO `wp_postmeta` VALUES('106','18','_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES('107','18','_backorders','no');
INSERT INTO `wp_postmeta` VALUES('108','18','_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES('109','18','_virtual','no');
INSERT INTO `wp_postmeta` VALUES('110','18','_downloadable','no');
INSERT INTO `wp_postmeta` VALUES('111','18','_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES('112','18','_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES('113','18','_stock','25');
INSERT INTO `wp_postmeta` VALUES('114','18','_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES('115','18','_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES('116','18','_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES('117','18','_product_version','11.1.0');
INSERT INTO `wp_postmeta` VALUES('118','18','_price','5990');
INSERT INTO `wp_postmeta` VALUES('119','19','_sku','MAQ-006');
INSERT INTO `wp_postmeta` VALUES('120','19','_regular_price','6990');
INSERT INTO `wp_postmeta` VALUES('121','19','total_sales','0');
INSERT INTO `wp_postmeta` VALUES('122','19','_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES('123','19','_tax_class','');
INSERT INTO `wp_postmeta` VALUES('124','19','_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES('125','19','_backorders','no');
INSERT INTO `wp_postmeta` VALUES('126','19','_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES('127','19','_virtual','no');
INSERT INTO `wp_postmeta` VALUES('128','19','_downloadable','no');
INSERT INTO `wp_postmeta` VALUES('129','19','_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES('130','19','_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES('131','19','_stock','30');
INSERT INTO `wp_postmeta` VALUES('132','19','_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES('133','19','_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES('134','19','_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES('135','19','_product_version','11.1.0');
INSERT INTO `wp_postmeta` VALUES('136','19','_price','6990');
INSERT INTO `wp_postmeta` VALUES('137','20','_sku','MAQ-007');
INSERT INTO `wp_postmeta` VALUES('138','20','_regular_price','7990');
INSERT INTO `wp_postmeta` VALUES('139','20','total_sales','0');
INSERT INTO `wp_postmeta` VALUES('140','20','_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES('141','20','_tax_class','');
INSERT INTO `wp_postmeta` VALUES('142','20','_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES('143','20','_backorders','no');
INSERT INTO `wp_postmeta` VALUES('144','20','_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES('145','20','_virtual','no');
INSERT INTO `wp_postmeta` VALUES('146','20','_downloadable','no');
INSERT INTO `wp_postmeta` VALUES('147','20','_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES('148','20','_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES('149','20','_stock','25');
INSERT INTO `wp_postmeta` VALUES('150','20','_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES('151','20','_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES('152','20','_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES('153','20','_product_version','11.1.0');
INSERT INTO `wp_postmeta` VALUES('154','20','_price','7990');
INSERT INTO `wp_postmeta` VALUES('155','21','_sku','MAQ-008');
INSERT INTO `wp_postmeta` VALUES('156','21','_regular_price','4990');
INSERT INTO `wp_postmeta` VALUES('157','21','total_sales','0');
INSERT INTO `wp_postmeta` VALUES('158','21','_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES('159','21','_tax_class','');
INSERT INTO `wp_postmeta` VALUES('160','21','_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES('161','21','_backorders','no');
INSERT INTO `wp_postmeta` VALUES('162','21','_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES('163','21','_virtual','no');
INSERT INTO `wp_postmeta` VALUES('164','21','_downloadable','no');
INSERT INTO `wp_postmeta` VALUES('165','21','_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES('166','21','_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES('167','21','_stock','50');
INSERT INTO `wp_postmeta` VALUES('168','21','_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES('169','21','_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES('170','21','_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES('171','21','_product_version','11.1.0');
INSERT INTO `wp_postmeta` VALUES('172','21','_price','4990');
INSERT INTO `wp_postmeta` VALUES('173','22','_sku','MAQ-009');
INSERT INTO `wp_postmeta` VALUES('174','22','_regular_price','5990');
INSERT INTO `wp_postmeta` VALUES('175','22','total_sales','0');
INSERT INTO `wp_postmeta` VALUES('176','22','_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES('177','22','_tax_class','');
INSERT INTO `wp_postmeta` VALUES('178','22','_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES('179','22','_backorders','no');
INSERT INTO `wp_postmeta` VALUES('180','22','_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES('181','22','_virtual','no');
INSERT INTO `wp_postmeta` VALUES('182','22','_downloadable','no');
INSERT INTO `wp_postmeta` VALUES('183','22','_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES('184','22','_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES('185','22','_stock','35');
INSERT INTO `wp_postmeta` VALUES('186','22','_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES('187','22','_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES('188','22','_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES('189','22','_product_version','11.1.0');
INSERT INTO `wp_postmeta` VALUES('190','22','_price','5990');
INSERT INTO `wp_postmeta` VALUES('191','23','_sku','MAQ-010');
INSERT INTO `wp_postmeta` VALUES('192','23','_regular_price','8990');
INSERT INTO `wp_postmeta` VALUES('193','23','total_sales','0');
INSERT INTO `wp_postmeta` VALUES('194','23','_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES('195','23','_tax_class','');
INSERT INTO `wp_postmeta` VALUES('196','23','_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES('197','23','_backorders','no');
INSERT INTO `wp_postmeta` VALUES('198','23','_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES('199','23','_virtual','no');
INSERT INTO `wp_postmeta` VALUES('200','23','_downloadable','no');
INSERT INTO `wp_postmeta` VALUES('201','23','_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES('202','23','_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES('203','23','_stock','20');
INSERT INTO `wp_postmeta` VALUES('204','23','_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES('205','23','_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES('206','23','_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES('207','23','_product_version','11.1.0');
INSERT INTO `wp_postmeta` VALUES('208','23','_price','8990');
INSERT INTO `wp_postmeta` VALUES('209','24','_sku','ELEC-001');
INSERT INTO `wp_postmeta` VALUES('210','24','_regular_price','24990');
INSERT INTO `wp_postmeta` VALUES('211','24','total_sales','0');
INSERT INTO `wp_postmeta` VALUES('212','24','_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES('213','24','_tax_class','');
INSERT INTO `wp_postmeta` VALUES('214','24','_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES('215','24','_backorders','no');
INSERT INTO `wp_postmeta` VALUES('216','24','_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES('217','24','_virtual','no');
INSERT INTO `wp_postmeta` VALUES('218','24','_downloadable','no');
INSERT INTO `wp_postmeta` VALUES('219','24','_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES('220','24','_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES('221','24','_stock','15');
INSERT INTO `wp_postmeta` VALUES('222','24','_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES('223','24','_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES('224','24','_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES('225','24','_product_version','11.1.0');
INSERT INTO `wp_postmeta` VALUES('226','24','_price','24990');
INSERT INTO `wp_postmeta` VALUES('227','25','_sku','ELEC-002');
INSERT INTO `wp_postmeta` VALUES('228','25','_regular_price','9990');
INSERT INTO `wp_postmeta` VALUES('229','25','total_sales','0');
INSERT INTO `wp_postmeta` VALUES('230','25','_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES('231','25','_tax_class','');
INSERT INTO `wp_postmeta` VALUES('232','25','_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES('233','25','_backorders','no');
INSERT INTO `wp_postmeta` VALUES('234','25','_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES('235','25','_virtual','no');
INSERT INTO `wp_postmeta` VALUES('236','25','_downloadable','no');
INSERT INTO `wp_postmeta` VALUES('237','25','_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES('238','25','_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES('239','25','_stock','40');
INSERT INTO `wp_postmeta` VALUES('240','25','_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES('241','25','_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES('242','25','_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES('243','25','_product_version','11.1.0');
INSERT INTO `wp_postmeta` VALUES('244','25','_price','9990');
INSERT INTO `wp_postmeta` VALUES('245','26','_sku','ELEC-003');
INSERT INTO `wp_postmeta` VALUES('246','26','_regular_price','4990');
INSERT INTO `wp_postmeta` VALUES('247','26','total_sales','0');
INSERT INTO `wp_postmeta` VALUES('248','26','_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES('249','26','_tax_class','');
INSERT INTO `wp_postmeta` VALUES('250','26','_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES('251','26','_backorders','no');
INSERT INTO `wp_postmeta` VALUES('252','26','_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES('253','26','_virtual','no');
INSERT INTO `wp_postmeta` VALUES('254','26','_downloadable','no');
INSERT INTO `wp_postmeta` VALUES('255','26','_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES('256','26','_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES('257','26','_stock','60');
INSERT INTO `wp_postmeta` VALUES('258','26','_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES('259','26','_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES('260','26','_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES('261','26','_product_version','11.1.0');
INSERT INTO `wp_postmeta` VALUES('262','26','_price','4990');
INSERT INTO `wp_postmeta` VALUES('263','27','_sku','ELEC-004');
INSERT INTO `wp_postmeta` VALUES('264','27','_regular_price','6990');
INSERT INTO `wp_postmeta` VALUES('265','27','total_sales','0');
INSERT INTO `wp_postmeta` VALUES('266','27','_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES('267','27','_tax_class','');
INSERT INTO `wp_postmeta` VALUES('268','27','_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES('269','27','_backorders','no');
INSERT INTO `wp_postmeta` VALUES('270','27','_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES('271','27','_virtual','no');
INSERT INTO `wp_postmeta` VALUES('272','27','_downloadable','no');
INSERT INTO `wp_postmeta` VALUES('273','27','_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES('274','27','_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES('275','27','_stock','30');
INSERT INTO `wp_postmeta` VALUES('276','27','_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES('277','27','_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES('278','27','_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES('279','27','_product_version','11.1.0');
INSERT INTO `wp_postmeta` VALUES('280','27','_price','6990');
INSERT INTO `wp_postmeta` VALUES('281','28','_sku','ELEC-005');
INSERT INTO `wp_postmeta` VALUES('282','28','_regular_price','29990');
INSERT INTO `wp_postmeta` VALUES('283','28','total_sales','0');
INSERT INTO `wp_postmeta` VALUES('284','28','_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES('285','28','_tax_class','');
INSERT INTO `wp_postmeta` VALUES('286','28','_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES('287','28','_backorders','no');
INSERT INTO `wp_postmeta` VALUES('288','28','_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES('289','28','_virtual','no');
INSERT INTO `wp_postmeta` VALUES('290','28','_downloadable','no');
INSERT INTO `wp_postmeta` VALUES('291','28','_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES('292','28','_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES('293','28','_stock','10');
INSERT INTO `wp_postmeta` VALUES('294','28','_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES('295','28','_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES('296','28','_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES('297','28','_product_version','11.1.0');
INSERT INTO `wp_postmeta` VALUES('298','28','_price','29990');
INSERT INTO `wp_postmeta` VALUES('299','29','_sku','ELEC-006');
INSERT INTO `wp_postmeta` VALUES('300','29','_regular_price','19990');
INSERT INTO `wp_postmeta` VALUES('301','29','total_sales','0');
INSERT INTO `wp_postmeta` VALUES('302','29','_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES('303','29','_tax_class','');
INSERT INTO `wp_postmeta` VALUES('304','29','_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES('305','29','_backorders','no');
INSERT INTO `wp_postmeta` VALUES('306','29','_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES('307','29','_virtual','no');
INSERT INTO `wp_postmeta` VALUES('308','29','_downloadable','no');
INSERT INTO `wp_postmeta` VALUES('309','29','_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES('310','29','_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES('311','29','_stock','15');
INSERT INTO `wp_postmeta` VALUES('312','29','_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES('313','29','_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES('314','29','_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES('315','29','_product_version','11.1.0');
INSERT INTO `wp_postmeta` VALUES('316','29','_price','19990');
INSERT INTO `wp_postmeta` VALUES('317','30','_sku','ELEC-007');
INSERT INTO `wp_postmeta` VALUES('318','30','_regular_price','18990');
INSERT INTO `wp_postmeta` VALUES('319','30','total_sales','0');
INSERT INTO `wp_postmeta` VALUES('320','30','_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES('321','30','_tax_class','');
INSERT INTO `wp_postmeta` VALUES('322','30','_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES('323','30','_backorders','no');
INSERT INTO `wp_postmeta` VALUES('324','30','_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES('325','30','_virtual','no');
INSERT INTO `wp_postmeta` VALUES('326','30','_downloadable','no');
INSERT INTO `wp_postmeta` VALUES('327','30','_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES('328','30','_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES('329','30','_stock','20');
INSERT INTO `wp_postmeta` VALUES('330','30','_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES('331','30','_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES('332','30','_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES('333','30','_product_version','11.1.0');
INSERT INTO `wp_postmeta` VALUES('334','30','_price','18990');
INSERT INTO `wp_postmeta` VALUES('335','31','_sku','ELEC-008');
INSERT INTO `wp_postmeta` VALUES('336','31','_regular_price','8990');
INSERT INTO `wp_postmeta` VALUES('337','31','total_sales','0');
INSERT INTO `wp_postmeta` VALUES('338','31','_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES('339','31','_tax_class','');
INSERT INTO `wp_postmeta` VALUES('340','31','_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES('341','31','_backorders','no');
INSERT INTO `wp_postmeta` VALUES('342','31','_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES('343','31','_virtual','no');
INSERT INTO `wp_postmeta` VALUES('344','31','_downloadable','no');
INSERT INTO `wp_postmeta` VALUES('345','31','_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES('346','31','_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES('347','31','_stock','25');
INSERT INTO `wp_postmeta` VALUES('348','31','_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES('349','31','_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES('350','31','_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES('351','31','_product_version','11.1.0');
INSERT INTO `wp_postmeta` VALUES('352','31','_price','8990');
INSERT INTO `wp_postmeta` VALUES('353','32','_sku','ELEC-009');
INSERT INTO `wp_postmeta` VALUES('354','32','_regular_price','14990');
INSERT INTO `wp_postmeta` VALUES('355','32','total_sales','0');
INSERT INTO `wp_postmeta` VALUES('356','32','_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES('357','32','_tax_class','');
INSERT INTO `wp_postmeta` VALUES('358','32','_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES('359','32','_backorders','no');
INSERT INTO `wp_postmeta` VALUES('360','32','_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES('361','32','_virtual','no');
INSERT INTO `wp_postmeta` VALUES('362','32','_downloadable','no');
INSERT INTO `wp_postmeta` VALUES('363','32','_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES('364','32','_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES('365','32','_stock','18');
INSERT INTO `wp_postmeta` VALUES('366','32','_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES('367','32','_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES('368','32','_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES('369','32','_product_version','11.1.0');
INSERT INTO `wp_postmeta` VALUES('370','32','_price','14990');
INSERT INTO `wp_postmeta` VALUES('371','33','_sku','ELEC-010');
INSERT INTO `wp_postmeta` VALUES('372','33','_regular_price','15990');
INSERT INTO `wp_postmeta` VALUES('373','33','total_sales','0');
INSERT INTO `wp_postmeta` VALUES('374','33','_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES('375','33','_tax_class','');
INSERT INTO `wp_postmeta` VALUES('376','33','_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES('377','33','_backorders','no');
INSERT INTO `wp_postmeta` VALUES('378','33','_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES('379','33','_virtual','no');
INSERT INTO `wp_postmeta` VALUES('380','33','_downloadable','no');
INSERT INTO `wp_postmeta` VALUES('381','33','_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES('382','33','_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES('383','33','_stock','22');
INSERT INTO `wp_postmeta` VALUES('384','33','_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES('385','33','_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES('386','33','_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES('387','33','_product_version','11.1.0');
INSERT INTO `wp_postmeta` VALUES('388','33','_price','15990');
INSERT INTO `wp_postmeta` VALUES('389','34','_sku','ELE-001');
INSERT INTO `wp_postmeta` VALUES('390','34','_regular_price','19990');
INSERT INTO `wp_postmeta` VALUES('391','34','total_sales','0');
INSERT INTO `wp_postmeta` VALUES('392','34','_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES('393','34','_tax_class','');
INSERT INTO `wp_postmeta` VALUES('394','34','_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES('395','34','_backorders','no');
INSERT INTO `wp_postmeta` VALUES('396','34','_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES('397','34','_virtual','no');
INSERT INTO `wp_postmeta` VALUES('398','34','_downloadable','no');
INSERT INTO `wp_postmeta` VALUES('399','34','_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES('400','34','_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES('401','34','_stock','12');
INSERT INTO `wp_postmeta` VALUES('402','34','_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES('403','34','_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES('404','34','_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES('405','34','_product_version','11.1.0');
INSERT INTO `wp_postmeta` VALUES('406','34','_price','19990');
INSERT INTO `wp_postmeta` VALUES('407','35','_sku','ELE-002');
INSERT INTO `wp_postmeta` VALUES('408','35','_regular_price','15990');
INSERT INTO `wp_postmeta` VALUES('409','35','total_sales','0');
INSERT INTO `wp_postmeta` VALUES('410','35','_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES('411','35','_tax_class','');
INSERT INTO `wp_postmeta` VALUES('412','35','_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES('413','35','_backorders','no');
INSERT INTO `wp_postmeta` VALUES('414','35','_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES('415','35','_virtual','no');
INSERT INTO `wp_postmeta` VALUES('416','35','_downloadable','no');
INSERT INTO `wp_postmeta` VALUES('417','35','_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES('418','35','_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES('419','35','_stock','10');
INSERT INTO `wp_postmeta` VALUES('420','35','_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES('421','35','_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES('422','35','_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES('423','35','_product_version','11.1.0');
INSERT INTO `wp_postmeta` VALUES('424','35','_price','15990');
INSERT INTO `wp_postmeta` VALUES('425','36','_sku','ELE-003');
INSERT INTO `wp_postmeta` VALUES('426','36','_regular_price','17990');
INSERT INTO `wp_postmeta` VALUES('427','36','total_sales','0');
INSERT INTO `wp_postmeta` VALUES('428','36','_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES('429','36','_tax_class','');
INSERT INTO `wp_postmeta` VALUES('430','36','_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES('431','36','_backorders','no');
INSERT INTO `wp_postmeta` VALUES('432','36','_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES('433','36','_virtual','no');
INSERT INTO `wp_postmeta` VALUES('434','36','_downloadable','no');
INSERT INTO `wp_postmeta` VALUES('435','36','_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES('436','36','_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES('437','36','_stock','8');
INSERT INTO `wp_postmeta` VALUES('438','36','_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES('439','36','_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES('440','36','_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES('441','36','_product_version','11.1.0');
INSERT INTO `wp_postmeta` VALUES('442','36','_price','17990');
INSERT INTO `wp_postmeta` VALUES('443','37','_sku','ELE-004');
INSERT INTO `wp_postmeta` VALUES('444','37','_regular_price','24990');
INSERT INTO `wp_postmeta` VALUES('445','37','total_sales','0');
INSERT INTO `wp_postmeta` VALUES('446','37','_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES('447','37','_tax_class','');
INSERT INTO `wp_postmeta` VALUES('448','37','_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES('449','37','_backorders','no');
INSERT INTO `wp_postmeta` VALUES('450','37','_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES('451','37','_virtual','no');
INSERT INTO `wp_postmeta` VALUES('452','37','_downloadable','no');
INSERT INTO `wp_postmeta` VALUES('453','37','_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES('454','37','_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES('455','37','_stock','6');
INSERT INTO `wp_postmeta` VALUES('456','37','_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES('457','37','_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES('458','37','_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES('459','37','_product_version','11.1.0');
INSERT INTO `wp_postmeta` VALUES('460','37','_price','24990');
INSERT INTO `wp_postmeta` VALUES('461','38','_sku','ELE-005');
INSERT INTO `wp_postmeta` VALUES('462','38','_regular_price','14990');
INSERT INTO `wp_postmeta` VALUES('463','38','total_sales','0');
INSERT INTO `wp_postmeta` VALUES('464','38','_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES('465','38','_tax_class','');
INSERT INTO `wp_postmeta` VALUES('466','38','_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES('467','38','_backorders','no');
INSERT INTO `wp_postmeta` VALUES('468','38','_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES('469','38','_virtual','no');
INSERT INTO `wp_postmeta` VALUES('470','38','_downloadable','no');
INSERT INTO `wp_postmeta` VALUES('471','38','_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES('472','38','_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES('473','38','_stock','14');
INSERT INTO `wp_postmeta` VALUES('474','38','_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES('475','38','_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES('476','38','_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES('477','38','_product_version','11.1.0');
INSERT INTO `wp_postmeta` VALUES('478','38','_price','14990');
INSERT INTO `wp_postmeta` VALUES('479','39','_sku','ELE-006');
INSERT INTO `wp_postmeta` VALUES('480','39','_regular_price','12990');
INSERT INTO `wp_postmeta` VALUES('481','39','total_sales','0');
INSERT INTO `wp_postmeta` VALUES('482','39','_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES('483','39','_tax_class','');
INSERT INTO `wp_postmeta` VALUES('484','39','_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES('485','39','_backorders','no');
INSERT INTO `wp_postmeta` VALUES('486','39','_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES('487','39','_virtual','no');
INSERT INTO `wp_postmeta` VALUES('488','39','_downloadable','no');
INSERT INTO `wp_postmeta` VALUES('489','39','_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES('490','39','_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES('491','39','_stock','10');
INSERT INTO `wp_postmeta` VALUES('492','39','_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES('493','39','_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES('494','39','_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES('495','39','_product_version','11.1.0');
INSERT INTO `wp_postmeta` VALUES('496','39','_price','12990');
INSERT INTO `wp_postmeta` VALUES('497','40','_sku','ELE-007');
INSERT INTO `wp_postmeta` VALUES('498','40','_regular_price','17990');
INSERT INTO `wp_postmeta` VALUES('499','40','total_sales','0');
INSERT INTO `wp_postmeta` VALUES('500','40','_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES('501','40','_tax_class','');
INSERT INTO `wp_postmeta` VALUES('502','40','_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES('503','40','_backorders','no');
INSERT INTO `wp_postmeta` VALUES('504','40','_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES('505','40','_virtual','no');
INSERT INTO `wp_postmeta` VALUES('506','40','_downloadable','no');
INSERT INTO `wp_postmeta` VALUES('507','40','_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES('508','40','_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES('509','40','_stock','12');
INSERT INTO `wp_postmeta` VALUES('510','40','_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES('511','40','_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES('512','40','_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES('513','40','_product_version','11.1.0');
INSERT INTO `wp_postmeta` VALUES('514','40','_price','17990');
INSERT INTO `wp_postmeta` VALUES('515','41','_sku','ELE-008');
INSERT INTO `wp_postmeta` VALUES('516','41','_regular_price','9990');
INSERT INTO `wp_postmeta` VALUES('517','41','total_sales','0');
INSERT INTO `wp_postmeta` VALUES('518','41','_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES('519','41','_tax_class','');
INSERT INTO `wp_postmeta` VALUES('520','41','_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES('521','41','_backorders','no');
INSERT INTO `wp_postmeta` VALUES('522','41','_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES('523','41','_virtual','no');
INSERT INTO `wp_postmeta` VALUES('524','41','_downloadable','no');
INSERT INTO `wp_postmeta` VALUES('525','41','_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES('526','41','_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES('527','41','_stock','20');
INSERT INTO `wp_postmeta` VALUES('528','41','_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES('529','41','_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES('530','41','_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES('531','41','_product_version','11.1.0');
INSERT INTO `wp_postmeta` VALUES('532','41','_price','9990');
INSERT INTO `wp_postmeta` VALUES('533','42','_sku','ELE-009');
INSERT INTO `wp_postmeta` VALUES('534','42','_regular_price','21990');
INSERT INTO `wp_postmeta` VALUES('535','42','total_sales','0');
INSERT INTO `wp_postmeta` VALUES('536','42','_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES('537','42','_tax_class','');
INSERT INTO `wp_postmeta` VALUES('538','42','_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES('539','42','_backorders','no');
INSERT INTO `wp_postmeta` VALUES('540','42','_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES('541','42','_virtual','no');
INSERT INTO `wp_postmeta` VALUES('542','42','_downloadable','no');
INSERT INTO `wp_postmeta` VALUES('543','42','_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES('544','42','_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES('545','42','_stock','10');
INSERT INTO `wp_postmeta` VALUES('546','42','_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES('547','42','_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES('548','42','_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES('549','42','_product_version','11.1.0');
INSERT INTO `wp_postmeta` VALUES('550','42','_price','21990');
INSERT INTO `wp_postmeta` VALUES('551','43','_sku','ELE-010');
INSERT INTO `wp_postmeta` VALUES('552','43','_regular_price','59990');
INSERT INTO `wp_postmeta` VALUES('553','43','total_sales','0');
INSERT INTO `wp_postmeta` VALUES('554','43','_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES('555','43','_tax_class','');
INSERT INTO `wp_postmeta` VALUES('556','43','_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES('557','43','_backorders','no');
INSERT INTO `wp_postmeta` VALUES('558','43','_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES('559','43','_virtual','no');
INSERT INTO `wp_postmeta` VALUES('560','43','_downloadable','no');
INSERT INTO `wp_postmeta` VALUES('561','43','_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES('562','43','_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES('563','43','_stock','5');
INSERT INTO `wp_postmeta` VALUES('564','43','_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES('565','43','_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES('566','43','_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES('567','43','_product_version','11.1.0');
INSERT INTO `wp_postmeta` VALUES('568','43','_price','59990');
INSERT INTO `wp_postmeta` VALUES('569','44','_sku','MAQ-001');
INSERT INTO `wp_postmeta` VALUES('570','44','_regular_price','5990');
INSERT INTO `wp_postmeta` VALUES('571','44','total_sales','0');
INSERT INTO `wp_postmeta` VALUES('572','44','_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES('573','44','_tax_class','');
INSERT INTO `wp_postmeta` VALUES('574','44','_manage_stock','yes');
INSERT INTO `wp_postmeta` VALUES('575','44','_backorders','no');
INSERT INTO `wp_postmeta` VALUES('576','44','_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES('577','44','_virtual','no');
INSERT INTO `wp_postmeta` VALUES('578','44','_downloadable','no');
INSERT INTO `wp_postmeta` VALUES('579','44','_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES('580','44','_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES('581','44','_stock','30');
INSERT INTO `wp_postmeta` VALUES('582','44','_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES('583','44','_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES('584','44','_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES('585','44','_product_version','11.1.0');
INSERT INTO `wp_postmeta` VALUES('586','44','_price','5990');

-- Tabla: wp_posts
DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `type_status_author` (`post_type`,`post_status`,`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_posts` VALUES('1','1','2026-09-04 03:30:49','2026-09-04 03:30:49','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2026-09-04 03:30:49','2026-09-04 03:30:49','','0','http://tienda-online.local/?p=1','0','post','','1');
INSERT INTO `wp_posts` VALUES('2','1','2026-09-04 03:30:49','2026-09-04 03:30:49','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://tienda-online.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2026-09-04 03:30:49','2026-09-04 03:30:49','','0','http://tienda-online.local/?page_id=2','0','page','','0');
INSERT INTO `wp_posts` VALUES('3','1','2026-09-04 03:30:49','2026-09-04 03:30:49','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://tienda-online.local.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n','Privacy Policy','','draft','closed','open','','privacy-policy','','','2026-09-04 03:30:49','2026-09-04 03:30:49','','0','http://tienda-online.local/?page_id=3','0','page','','0');
INSERT INTO `wp_posts` VALUES('4','0','2026-09-04 03:33:09','2026-09-04 03:33:09','<!-- wp:page-list /-->','Navigation','','publish','closed','closed','','navigation','','','2026-09-04 03:33:09','2026-09-04 03:33:09','','0','http://tienda-online.local/navigation/','0','wp_navigation','','0');
INSERT INTO `wp_posts` VALUES('5','0','2026-09-04 03:40:54','2026-09-04 03:40:54','','woocommerce-placeholder','','inherit','open','closed','','woocommerce-placeholder','','','2026-09-04 03:40:54','2026-09-04 03:40:54','','0','http://tienda-online.local/wp-content/uploads/2026/09/woocommerce-placeholder.webp','0','attachment','image/webp','0');
INSERT INTO `wp_posts` VALUES('6','1','2026-09-04 03:40:55','2026-09-04 03:40:55','','Shop','','publish','closed','closed','','shop','','','2026-09-04 03:40:55','2026-09-04 03:40:55','','0','http://tienda-online.local/shop/','0','page','','0');
INSERT INTO `wp_posts` VALUES('7','1','2026-09-04 03:40:55','2026-09-04 03:40:55','<!-- wp:woocommerce/cart -->\n<div class=\"wp-block-woocommerce-cart alignwide is-loading\"><!-- wp:woocommerce/filled-cart-block -->\n<div class=\"wp-block-woocommerce-filled-cart-block\"><!-- wp:woocommerce/cart-items-block -->\n<div class=\"wp-block-woocommerce-cart-items-block\"><!-- wp:woocommerce/cart-line-items-block -->\n<div class=\"wp-block-woocommerce-cart-line-items-block\"></div>\n<!-- /wp:woocommerce/cart-line-items-block -->\n\n<!-- wp:woocommerce/product-collection {\"queryId\":0,\"query\":{\"perPage\":3,\"pages\":1,\"offset\":0,\"postType\":\"product\",\"order\":\"asc\",\"orderBy\":\"title\",\"search\":\"\",\"exclude\":[],\"inherit\":false,\"taxQuery\":{},\"isProductCollectionBlock\":true,\"featured\":false,\"woocommerceOnSale\":false,\"woocommerceStockStatus\":[\"instock\",\"outofstock\",\"onbackorder\"],\"woocommerceAttributes\":[],\"woocommerceHandPickedProducts\":[],\"filterable\":false,\"relatedBy\":{\"categories\":true,\"tags\":true}},\"tagName\":\"div\",\"displayLayout\":{\"type\":\"flex\",\"columns\":3,\"shrinkColumns\":true},\"dimensions\":{\"widthType\":\"fill\"},\"collection\":\"woocommerce/product-collection/cross-sells\",\"hideControls\":[\"filterable\"],\"queryContextIncludes\":[\"collection\"]} -->\n<div class=\"wp-block-woocommerce-product-collection\"><!-- wp:heading {\"textAlign\":\"left\",\"style\":{\"spacing\":{\"margin\":{\"bottom\":\"1rem\"}}}} -->\n<h2 class=\"wp-block-heading has-text-align-left\" style=\"margin-bottom:1rem\">You may be interested in&hellip;</h2>\n\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-template -->\n<!-- wp:woocommerce/product-image {\"showSaleBadge\":false,\"imageSizing\":\"thumbnail\",\"isDescendentOfQueryLoop\":true} -->\n<!-- wp:woocommerce/product-sale-badge {\"align\":\"right\"} /-->\n<!-- /wp:woocommerce/product-image -->\n\n<!-- wp:post-title {\"textAlign\":\"center\",\"isLink\":true,\"style\":{\"spacing\":{\"margin\":{\"bottom\":\"0.75rem\",\"top\":\"0\"}},\"typography\":{\"lineHeight\":\"1.4\"}},\"fontSize\":\"medium\",\"__woocommerceNamespace\":\"woocommerce/product-collection/product-title\"} /-->\n\n<!-- wp:woocommerce/product-price {\"isDescendentOfQueryLoop\":true,\"textAlign\":\"center\",\"fontSize\":\"small\"} /-->\n\n<!-- wp:woocommerce/product-button {\"textAlign\":\"center\",\"isDescendentOfQueryLoop\":true,\"fontSize\":\"small\"} /-->\n<!-- /wp:woocommerce/product-template --></div>\n<!-- /wp:woocommerce/product-collection --></div>\n\n<!-- /wp:woocommerce/cart-items-block -->\n\n<!-- wp:woocommerce/cart-totals-block -->\n<div class=\"wp-block-woocommerce-cart-totals-block\"><!-- wp:woocommerce/cart-order-summary-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-block\"><!-- wp:woocommerce/cart-order-summary-heading-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-heading-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-heading-block -->\n\n<!-- wp:woocommerce/cart-order-summary-coupon-form-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-coupon-form-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-coupon-form-block -->\n\n<!-- wp:woocommerce/cart-order-summary-subtotal-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-subtotal-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-subtotal-block -->\n\n<!-- wp:woocommerce/cart-order-summary-fee-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-fee-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-fee-block -->\n\n<!-- wp:woocommerce/cart-order-summary-discount-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-discount-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-discount-block -->\n\n<!-- wp:woocommerce/cart-order-summary-shipping-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-shipping-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-shipping-block -->\n\n<!-- wp:woocommerce/cart-order-summary-taxes-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-taxes-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-taxes-block --></div>\n<!-- /wp:woocommerce/cart-order-summary-block -->\n\n<!-- wp:woocommerce/cart-express-payment-block -->\n<div class=\"wp-block-woocommerce-cart-express-payment-block\"></div>\n<!-- /wp:woocommerce/cart-express-payment-block -->\n\n<!-- wp:woocommerce/proceed-to-checkout-block -->\n<div class=\"wp-block-woocommerce-proceed-to-checkout-block\"></div>\n<!-- /wp:woocommerce/proceed-to-checkout-block -->\n\n<!-- wp:woocommerce/cart-accepted-payment-methods-block -->\n<div class=\"wp-block-woocommerce-cart-accepted-payment-methods-block\"></div>\n<!-- /wp:woocommerce/cart-accepted-payment-methods-block --></div>\n<!-- /wp:woocommerce/cart-totals-block --></div>\n<!-- /wp:woocommerce/filled-cart-block -->\n\n<!-- wp:woocommerce/empty-cart-block -->\n<div class=\"wp-block-woocommerce-empty-cart-block\"><!-- wp:heading {\"textAlign\":\"center\",\"className\":\"with-empty-cart-icon wc-block-cart__empty-cart__title\"} -->\n<h2 class=\"wp-block-heading has-text-align-center with-empty-cart-icon wc-block-cart__empty-cart__title\">Your cart is currently empty!</h2>\n<!-- /wp:heading -->\n\n<!-- wp:separator {\"className\":\"is-style-dots\"} -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity is-style-dots\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">New in store</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-new {\"columns\":4,\"rows\":1} /--></div>\n<!-- /wp:woocommerce/empty-cart-block --></div>\n<!-- /wp:woocommerce/cart -->','Cart','','publish','closed','closed','','cart','','','2026-09-04 03:40:55','2026-09-04 03:40:55','','0','http://tienda-online.local/cart/','0','page','','0');
INSERT INTO `wp_posts` VALUES('8','1','2026-09-04 03:40:55','2026-09-04 03:40:55','<!-- wp:woocommerce/checkout -->\n<div class=\"wp-block-woocommerce-checkout alignwide wc-block-checkout is-loading\"><!-- wp:woocommerce/checkout-fields-block -->\n<div class=\"wp-block-woocommerce-checkout-fields-block\"><!-- wp:woocommerce/checkout-express-payment-block -->\n<div class=\"wp-block-woocommerce-checkout-express-payment-block\"></div>\n<!-- /wp:woocommerce/checkout-express-payment-block -->\n\n<!-- wp:woocommerce/checkout-contact-information-block -->\n<div class=\"wp-block-woocommerce-checkout-contact-information-block\"></div>\n<!-- /wp:woocommerce/checkout-contact-information-block -->\n\n<!-- wp:woocommerce/checkout-shipping-method-block -->\n<div class=\"wp-block-woocommerce-checkout-shipping-method-block\"></div>\n<!-- /wp:woocommerce/checkout-shipping-method-block -->\n\n<!-- wp:woocommerce/checkout-pickup-options-block -->\n<div class=\"wp-block-woocommerce-checkout-pickup-options-block\"></div>\n<!-- /wp:woocommerce/checkout-pickup-options-block -->\n\n<!-- wp:woocommerce/checkout-shipping-address-block -->\n<div class=\"wp-block-woocommerce-checkout-shipping-address-block\"></div>\n<!-- /wp:woocommerce/checkout-shipping-address-block -->\n\n<!-- wp:woocommerce/checkout-billing-address-block -->\n<div class=\"wp-block-woocommerce-checkout-billing-address-block\"></div>\n<!-- /wp:woocommerce/checkout-billing-address-block -->\n\n<!-- wp:woocommerce/checkout-shipping-methods-block -->\n<div class=\"wp-block-woocommerce-checkout-shipping-methods-block\"></div>\n<!-- /wp:woocommerce/checkout-shipping-methods-block -->\n\n<!-- wp:woocommerce/checkout-payment-block -->\n<div class=\"wp-block-woocommerce-checkout-payment-block\"></div>\n<!-- /wp:woocommerce/checkout-payment-block -->\n\n<!-- wp:woocommerce/checkout-additional-information-block -->\n<div class=\"wp-block-woocommerce-checkout-additional-information-block\"></div>\n<!-- /wp:woocommerce/checkout-additional-information-block -->\n\n<!-- wp:woocommerce/checkout-order-note-block -->\n<div class=\"wp-block-woocommerce-checkout-order-note-block\"></div>\n<!-- /wp:woocommerce/checkout-order-note-block -->\n\n<!-- wp:woocommerce/checkout-terms-block -->\n<div class=\"wp-block-woocommerce-checkout-terms-block\"></div>\n<!-- /wp:woocommerce/checkout-terms-block -->\n\n<!-- wp:woocommerce/checkout-actions-block -->\n<div class=\"wp-block-woocommerce-checkout-actions-block\"></div>\n<!-- /wp:woocommerce/checkout-actions-block --></div>\n<!-- /wp:woocommerce/checkout-fields-block -->\n\n<!-- wp:woocommerce/checkout-totals-block -->\n<div class=\"wp-block-woocommerce-checkout-totals-block\"><!-- wp:woocommerce/checkout-order-summary-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-block\"><!-- wp:woocommerce/checkout-order-summary-cart-items-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-cart-items-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-cart-items-block -->\n\n<!-- wp:woocommerce/checkout-order-summary-coupon-form-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-coupon-form-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-coupon-form-block -->\n\n<!-- wp:woocommerce/checkout-order-summary-subtotal-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-subtotal-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-subtotal-block -->\n\n<!-- wp:woocommerce/checkout-order-summary-fee-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-fee-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-fee-block -->\n\n<!-- wp:woocommerce/checkout-order-summary-discount-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-discount-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-discount-block -->\n\n<!-- wp:woocommerce/checkout-order-summary-shipping-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-shipping-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-shipping-block -->\n\n<!-- wp:woocommerce/checkout-order-summary-taxes-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-taxes-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-taxes-block --></div>\n<!-- /wp:woocommerce/checkout-order-summary-block --></div>\n<!-- /wp:woocommerce/checkout-totals-block --></div>\n<!-- /wp:woocommerce/checkout -->','Checkout','','publish','closed','closed','','checkout','','','2026-09-04 03:40:55','2026-09-04 03:40:55','','0','http://tienda-online.local/checkout/','0','page','','0');
INSERT INTO `wp_posts` VALUES('9','1','2026-09-04 03:40:55','2026-09-04 03:40:55','<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->','My account','','publish','closed','closed','','my-account','','','2026-09-04 03:40:55','2026-09-04 03:40:55','','0','http://tienda-online.local/my-account/','0','page','','0');
INSERT INTO `wp_posts` VALUES('10','1','2026-09-04 03:40:55','0000-00-00 00:00:00','<!-- wp:paragraph -->\n<p><b>This is a sample page.</b></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Overview</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our refund and returns policy lasts 30 days. If 30 days have passed since your purchase, we can’t offer you a full refund or exchange.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To be eligible for a return, your item must be unused and in the same condition that you received it. It must also be in the original packaging.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Several types of goods are exempt from being returned. Perishable goods such as food, flowers, newspapers or magazines cannot be returned. We also do not accept products that are intimate or sanitary goods, hazardous materials, or flammable liquids or gases.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Additional non-returnable items:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Gift cards</li>\n<li>Downloadable software products</li>\n<li>Some health and personal care items</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>To complete your return, we require a receipt or proof of purchase.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Please do not send your purchase back to the manufacturer.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>There are certain situations where only partial refunds are granted:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Book with obvious signs of use</li>\n<li>CD, DVD, VHS tape, software, video game, cassette tape, or vinyl record that has been opened.</li>\n<li>Any item not in its original condition, is damaged or missing parts for reasons not due to our error.</li>\n<li>Any item that is returned more than 30 days after delivery</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Refunds</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Once your return is received and inspected, we will send you an email to notify you that we have received your returned item. We will also notify you of the approval or rejection of your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are approved, then your refund will be processed, and a credit will automatically be applied to your credit card or original method of payment, within a certain amount of days.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Late or missing refunds</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you haven’t received a refund yet, first check your bank account again.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Then contact your credit card company, it may take some time before your refund is officially posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Next contact your bank. There is often some processing time before a refund is posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you’ve done all of this and you still have not received your refund yet, please contact us at {email address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Sale items</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Only regular priced items may be refunded. Sale items cannot be refunded.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Exchanges</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>We only replace items if they are defective or damaged. If you need to exchange it for the same item, send us an email at {email address} and send your item to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Gifts</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If the item was marked as a gift when purchased and shipped directly to you, you’ll receive a gift credit for the value of your return. Once the returned item is received, a gift certificate will be mailed to you.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item wasn’t marked as a gift when purchased, or the gift giver had the order shipped to themselves to give to you later, we will send a refund to the gift giver and they will find out about your return.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Shipping returns</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>To return your product, you should mail your product to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>You will be responsible for paying for your own shipping costs for returning your item. Shipping costs are non-refundable. If you receive a refund, the cost of return shipping will be deducted from your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Depending on where you live, the time it may take for your exchanged product to reach you may vary.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are returning more expensive items, you may consider using a trackable shipping service or purchasing shipping insurance. We don’t guarantee that we will receive your returned item.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Need help?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Contact us at {email} for questions related to refunds and returns.</p>\n<!-- /wp:paragraph -->','Refund and Returns Policy','','draft','closed','closed','','refund_returns','','','2026-09-04 03:40:55','0000-00-00 00:00:00','','0','http://tienda-online.local/?page_id=10','0','page','','0');
INSERT INTO `wp_posts` VALUES('11','1','2026-09-04 03:46:03','2026-09-04 03:46:03','','Facebook','','publish','closed','closed','','facebook','','','2026-09-04 03:46:03','2026-09-04 03:46:03','','0','http://tienda-online.local/facebook/','0','nav_menu_item','','0');
INSERT INTO `wp_posts` VALUES('12','1','2026-09-04 03:46:04','2026-09-04 03:46:04','','Instagram','','publish','closed','closed','','instagram','','','2026-09-04 03:46:04','2026-09-04 03:46:04','','0','http://tienda-online.local/instagram/','2','nav_menu_item','','0');
INSERT INTO `wp_posts` VALUES('13','1','2026-09-04 03:46:06','2026-09-04 03:46:06','','TikTok','','publish','closed','closed','','tiktok','','','2026-09-04 03:46:06','2026-09-04 03:46:06','','0','http://tienda-online.local/tiktok/','3','nav_menu_item','','0');
INSERT INTO `wp_posts` VALUES('15','0','2026-09-04 03:56:41','2026-09-04 03:56:41','Base de maquillaje de cobertura media, acabado natural.','Base Líquida','Base de maquillaje de cobertura media, acabado natural.','publish','open','closed','','base-liquida','','','2026-09-04 03:56:41','2026-09-04 03:56:41','','0','http://127.0.0.1:10004/product/base-liquida/','0','product','','0');
INSERT INTO `wp_posts` VALUES('16','0','2026-09-04 03:56:41','2026-09-04 03:56:41','Máscara de pestañas con volumen y alargamiento.','Máscara de Pestañas','Máscara de pestañas con volumen y alargamiento.','publish','open','closed','','mascara-de-pestanas','','','2026-09-04 03:56:41','2026-09-04 03:56:41','','0','http://127.0.0.1:10004/product/mascara-de-pestanas/','0','product','','0');
INSERT INTO `wp_posts` VALUES('17','0','2026-09-04 03:56:41','2026-09-04 03:56:41','Paleta de 12 sombras con acabados mate y brillante.','Paleta de Sombras','Paleta de 12 sombras con acabados mate y brillante.','publish','open','closed','','paleta-de-sombras','','','2026-09-04 03:56:41','2026-09-04 03:56:41','','0','http://127.0.0.1:10004/product/paleta-de-sombras/','0','product','','0');
INSERT INTO `wp_posts` VALUES('18','0','2026-09-04 03:56:41','2026-09-04 03:56:41','Delineador líquido de punta fina, a prueba de agua.','Delineador Líquido','Delineador líquido de punta fina, a prueba de agua.','publish','open','closed','','delineador-liquido','','','2026-09-04 03:56:41','2026-09-04 03:56:41','','0','http://127.0.0.1:10004/product/delineador-liquido/','0','product','','0');
INSERT INTO `wp_posts` VALUES('19','0','2026-09-04 03:56:41','2026-09-04 03:56:41','Rubor en polvo de acabado natural.','Rubor','Rubor en polvo de acabado natural.','publish','open','closed','','rubor','','','2026-09-04 03:56:41','2026-09-04 03:56:41','','0','http://127.0.0.1:10004/product/rubor/','0','product','','0');
INSERT INTO `wp_posts` VALUES('20','0','2026-09-04 03:56:41','2026-09-04 03:56:41','Iluminador líquido de acabado dorado.','Iluminador','Iluminador líquido de acabado dorado.','publish','open','closed','','iluminador','','','2026-09-04 03:56:41','2026-09-04 03:56:41','','0','http://127.0.0.1:10004/product/iluminador/','0','product','','0');
INSERT INTO `wp_posts` VALUES('21','0','2026-09-04 03:56:41','2026-09-04 03:56:41','Esmalte de uñas de larga duración.','Esmalte de Uñas','Esmalte de uñas de larga duración.','publish','open','closed','','esmalte-de-unas','','','2026-09-04 03:56:41','2026-09-04 03:56:41','','0','http://127.0.0.1:10004/product/esmalte-de-unas/','0','product','','0');
INSERT INTO `wp_posts` VALUES('22','0','2026-09-04 03:56:41','2026-09-04 03:56:41','Corrector de ojeras de cobertura media.','Corrector','Corrector de ojeras de cobertura media.','publish','open','closed','','corrector','','','2026-09-04 03:56:41','2026-09-04 03:56:41','','0','http://127.0.0.1:10004/product/corrector/','0','product','','0');
INSERT INTO `wp_posts` VALUES('23','0','2026-09-04 03:56:41','2026-09-04 03:56:41','Brocha grande para aplicar polvos sueltos.','Brocha para Polvos','Brocha grande para aplicar polvos sueltos.','publish','open','closed','','brocha-para-polvos','','','2026-09-04 03:56:41','2026-09-04 03:56:41','','0','http://127.0.0.1:10004/product/brocha-para-polvos/','0','product','','0');
INSERT INTO `wp_posts` VALUES('24','0','2026-09-04 03:56:41','2026-09-04 03:56:41','Auriculares Bluetooth inalámbricos con estuche.','Auriculares Inalámbricos','Auriculares Bluetooth inalámbricos con estuche.','publish','open','closed','','auriculares-inalambricos','','','2026-09-04 03:56:41','2026-09-04 03:56:41','','0','http://127.0.0.1:10004/product/auriculares-inalambricos/','0','product','','0');
INSERT INTO `wp_posts` VALUES('25','0','2026-09-04 03:56:41','2026-09-04 03:56:41','Cargador rápido USB-C de 20W.','Cargador USB-C','Cargador rápido USB-C de 20W.','publish','open','closed','','cargador-usb-c','','','2026-09-04 03:56:41','2026-09-04 03:56:41','','0','http://127.0.0.1:10004/product/cargador-usb-c/','0','product','','0');
INSERT INTO `wp_posts` VALUES('26','0','2026-09-04 03:56:41','2026-09-04 03:56:41','Cable de carga Lightning de 1 metro.','Cable Lightning','Cable de carga Lightning de 1 metro.','publish','open','closed','','cable-lightning','','','2026-09-04 03:56:41','2026-09-04 03:56:41','','0','http://127.0.0.1:10004/product/cable-lightning/','0','product','','0');
INSERT INTO `wp_posts` VALUES('27','0','2026-09-04 03:56:42','2026-09-04 03:56:42','Soporte ajustable para celular y tablet.','Soporte Móvil','Soporte ajustable para celular y tablet.','publish','open','closed','','soporte-movil','','','2026-09-04 03:56:42','2026-09-04 03:56:42','','0','http://127.0.0.1:10004/product/soporte-movil/','0','product','','0');
INSERT INTO `wp_posts` VALUES('28','0','2026-09-04 03:56:42','2026-09-04 03:56:42','Smartwatch con monitoreo de salud.','Reloj Inteligente','Smartwatch con monitoreo de salud.','publish','open','closed','','reloj-inteligente','','','2026-09-04 03:56:42','2026-09-04 03:56:42','','0','http://127.0.0.1:10004/product/reloj-inteligente/','0','product','','0');
INSERT INTO `wp_posts` VALUES('29','0','2026-09-04 03:56:42','2026-09-04 03:56:42','Cámara web HD para videollamadas.','Cámara Web HD','Cámara web HD para videollamadas.','publish','open','closed','','camara-web-hd','','','2026-09-04 03:56:42','2026-09-04 03:56:42','','0','http://127.0.0.1:10004/product/camara-web-hd/','0','product','','0');
INSERT INTO `wp_posts` VALUES('30','0','2026-09-04 03:56:42','2026-09-04 03:56:42','Parlante Bluetooth portátil con bajo.','Parlante Bluetooth','Parlante Bluetooth portátil con bajo.','publish','open','closed','','parlante-bluetooth','','','2026-09-04 03:56:42','2026-09-04 03:56:42','','0','http://127.0.0.1:10004/product/parlante-bluetooth/','0','product','','0');
INSERT INTO `wp_posts` VALUES('31','0','2026-09-04 03:56:42','2026-09-04 03:56:42','Mouse inalámbrico ergonómico.','Mouse Inalámbrico','Mouse inalámbrico ergonómico.','publish','open','closed','','mouse-inalambrico','','','2026-09-04 03:56:42','2026-09-04 03:56:42','','0','http://127.0.0.1:10004/product/mouse-inalambrico/','0','product','','0');
INSERT INTO `wp_posts` VALUES('32','0','2026-09-04 03:56:42','2026-09-04 03:56:42','Teclado Bluetooth compacto.','Teclado Bluetooth','Teclado Bluetooth compacto.','publish','open','closed','','teclado-bluetooth','','','2026-09-04 03:56:42','2026-09-04 03:56:42','','0','http://127.0.0.1:10004/product/teclado-bluetooth/','0','product','','0');
INSERT INTO `wp_posts` VALUES('33','0','2026-09-04 03:56:42','2026-09-04 03:56:42','Batería externa portátil de 10000mAh.','Power Bank 10000mAh','Batería externa portátil de 10000mAh.','publish','open','closed','','power-bank-10000mah','','','2026-09-04 03:56:42','2026-09-04 03:56:42','','0','http://127.0.0.1:10004/product/power-bank-10000mah/','0','product','','0');
INSERT INTO `wp_posts` VALUES('34','0','2026-09-04 03:56:42','2026-09-04 03:56:42','Hervidor eléctrico de 1.5 litros de acero.','Hervidor Eléctrico','Hervidor eléctrico de 1.5 litros de acero.','publish','open','closed','','hervidor-electrico','','','2026-09-04 03:56:42','2026-09-04 03:56:42','','0','http://127.0.0.1:10004/product/hervidor-electrico/','0','product','','0');
INSERT INTO `wp_posts` VALUES('35','0','2026-09-04 03:56:42','2026-09-04 03:56:42','Batidora eléctrica con 5 velocidades.','Batidora Manual','Batidora eléctrica con 5 velocidades.','publish','open','closed','','batidora-manual','','','2026-09-04 03:56:42','2026-09-04 03:56:42','','0','http://127.0.0.1:10004/product/batidora-manual/','0','product','','0');
INSERT INTO `wp_posts` VALUES('36','0','2026-09-04 03:56:42','2026-09-04 03:56:42','Mini aspiradora recargable portátil.','Mini Aspiradora','Mini aspiradora recargable portátil.','publish','open','closed','','mini-aspiradora','','','2026-09-04 03:56:42','2026-09-04 03:56:42','','0','http://127.0.0.1:10004/product/mini-aspiradora/','0','product','','0');
INSERT INTO `wp_posts` VALUES('37','0','2026-09-04 03:56:42','2026-09-04 03:56:42','Cafetera de goteo para 12 tazas.','Cafetera de Goteo','Cafetera de goteo para 12 tazas.','publish','open','closed','','cafetera-de-goteo','','','2026-09-04 03:56:42','2026-09-04 03:56:42','','0','http://127.0.0.1:10004/product/cafetera-de-goteo/','0','product','','0');
INSERT INTO `wp_posts` VALUES('38','0','2026-09-04 03:56:42','2026-09-04 03:56:42','Licuadora portátil para batidos.','Licuadora Personal','Licuadora portátil para batidos.','publish','open','closed','','licuadora-personal','','','2026-09-04 03:56:42','2026-09-04 03:56:42','','0','http://127.0.0.1:10004/product/licuadora-personal/','0','product','','0');
INSERT INTO `wp_posts` VALUES('39','0','2026-09-04 03:56:42','2026-09-04 03:56:42','Plancha de vapor de 1500W con suela antiadherente.','Plancha de Vapor','Plancha de vapor de 1500W con suela antiadherente.','publish','open','closed','','plancha-de-vapor','','','2026-09-04 03:56:42','2026-09-04 03:56:42','','0','http://127.0.0.1:10004/product/plancha-de-vapor/','0','product','','0');
INSERT INTO `wp_posts` VALUES('40','0','2026-09-04 03:56:42','2026-09-04 03:56:42','Tostadora eléctrica con 6 niveles de tostado.','Tostadora','Tostadora eléctrica con 6 niveles de tostado.','publish','open','closed','','tostadora','','','2026-09-04 03:56:42','2026-09-04 03:56:42','','0','http://127.0.0.1:10004/product/tostadora/','0','product','','0');
INSERT INTO `wp_posts` VALUES('41','0','2026-09-04 03:56:43','2026-09-04 03:56:43','Ventilador de escritorio silencioso.','Ventilador de Escritorio','Ventilador de escritorio silencioso.','publish','open','closed','','ventilador-de-escritorio','','','2026-09-04 03:56:43','2026-09-04 03:56:43','','0','http://127.0.0.1:10004/product/ventilador-de-escritorio/','0','product','','0');
INSERT INTO `wp_posts` VALUES('42','0','2026-09-04 03:56:43','2026-09-04 03:56:43','Secador de pelo de 1800W con difusor.','Secador de Pelo','Secador de pelo de 1800W con difusor.','publish','open','closed','','secador-de-pelo','','','2026-09-04 03:56:43','2026-09-04 03:56:43','','0','http://127.0.0.1:10004/product/secador-de-pelo/','0','product','','0');
INSERT INTO `wp_posts` VALUES('43','0','2026-09-04 03:56:43','2026-09-04 03:56:43','Robot aspirador inteligente con mapeo.','Robot Aspirador','Robot aspirador inteligente con mapeo.','publish','open','closed','','robot-aspirador','','','2026-09-04 03:56:43','2026-09-04 03:56:43','','0','http://127.0.0.1:10004/product/robot-aspirador/','0','product','','0');
INSERT INTO `wp_posts` VALUES('44','1','2026-09-04 03:56:52','2026-09-04 03:56:52','Lápiz labial de larga duración, color rojo intenso, hidratante.','Lápiz Labial Rojo','Lápiz labial rojo mate','publish','open','closed','','lapiz-labial-rojo','','','2026-09-04 03:56:52','2026-09-04 03:56:52','','0','http://127.0.0.1:10004/product/lapiz-labial-rojo/','0','product','','0');

-- Tabla: wp_term_relationships
DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_term_relationships` VALUES('1','1','0');
INSERT INTO `wp_term_relationships` VALUES('11','16','0');
INSERT INTO `wp_term_relationships` VALUES('12','16','0');
INSERT INTO `wp_term_relationships` VALUES('13','16','0');
INSERT INTO `wp_term_relationships` VALUES('15','2','0');
INSERT INTO `wp_term_relationships` VALUES('15','23','0');
INSERT INTO `wp_term_relationships` VALUES('16','2','0');
INSERT INTO `wp_term_relationships` VALUES('16','22','0');
INSERT INTO `wp_term_relationships` VALUES('17','2','0');
INSERT INTO `wp_term_relationships` VALUES('17','22','0');
INSERT INTO `wp_term_relationships` VALUES('18','2','0');
INSERT INTO `wp_term_relationships` VALUES('18','22','0');
INSERT INTO `wp_term_relationships` VALUES('19','2','0');
INSERT INTO `wp_term_relationships` VALUES('19','23','0');
INSERT INTO `wp_term_relationships` VALUES('20','2','0');
INSERT INTO `wp_term_relationships` VALUES('20','23','0');
INSERT INTO `wp_term_relationships` VALUES('21','2','0');
INSERT INTO `wp_term_relationships` VALUES('21','24','0');
INSERT INTO `wp_term_relationships` VALUES('22','2','0');
INSERT INTO `wp_term_relationships` VALUES('22','23','0');
INSERT INTO `wp_term_relationships` VALUES('23','2','0');
INSERT INTO `wp_term_relationships` VALUES('23','22','0');
INSERT INTO `wp_term_relationships` VALUES('24','2','0');
INSERT INTO `wp_term_relationships` VALUES('24','25','0');
INSERT INTO `wp_term_relationships` VALUES('25','2','0');
INSERT INTO `wp_term_relationships` VALUES('25','26','0');
INSERT INTO `wp_term_relationships` VALUES('26','2','0');
INSERT INTO `wp_term_relationships` VALUES('26','26','0');
INSERT INTO `wp_term_relationships` VALUES('27','2','0');
INSERT INTO `wp_term_relationships` VALUES('27','27','0');
INSERT INTO `wp_term_relationships` VALUES('28','2','0');
INSERT INTO `wp_term_relationships` VALUES('28','27','0');
INSERT INTO `wp_term_relationships` VALUES('29','2','0');
INSERT INTO `wp_term_relationships` VALUES('29','27','0');
INSERT INTO `wp_term_relationships` VALUES('30','2','0');
INSERT INTO `wp_term_relationships` VALUES('30','25','0');
INSERT INTO `wp_term_relationships` VALUES('31','2','0');
INSERT INTO `wp_term_relationships` VALUES('31','27','0');
INSERT INTO `wp_term_relationships` VALUES('32','2','0');
INSERT INTO `wp_term_relationships` VALUES('32','27','0');
INSERT INTO `wp_term_relationships` VALUES('33','2','0');
INSERT INTO `wp_term_relationships` VALUES('33','26','0');
INSERT INTO `wp_term_relationships` VALUES('34','2','0');
INSERT INTO `wp_term_relationships` VALUES('34','28','0');
INSERT INTO `wp_term_relationships` VALUES('35','2','0');
INSERT INTO `wp_term_relationships` VALUES('35','28','0');
INSERT INTO `wp_term_relationships` VALUES('36','2','0');
INSERT INTO `wp_term_relationships` VALUES('36','29','0');
INSERT INTO `wp_term_relationships` VALUES('37','2','0');
INSERT INTO `wp_term_relationships` VALUES('37','28','0');
INSERT INTO `wp_term_relationships` VALUES('38','2','0');
INSERT INTO `wp_term_relationships` VALUES('38','28','0');
INSERT INTO `wp_term_relationships` VALUES('39','2','0');
INSERT INTO `wp_term_relationships` VALUES('39','29','0');
INSERT INTO `wp_term_relationships` VALUES('40','2','0');
INSERT INTO `wp_term_relationships` VALUES('40','28','0');
INSERT INTO `wp_term_relationships` VALUES('41','2','0');
INSERT INTO `wp_term_relationships` VALUES('41','30','0');
INSERT INTO `wp_term_relationships` VALUES('42','2','0');
INSERT INTO `wp_term_relationships` VALUES('42','30','0');
INSERT INTO `wp_term_relationships` VALUES('43','2','0');
INSERT INTO `wp_term_relationships` VALUES('43','29','0');
INSERT INTO `wp_term_relationships` VALUES('44','2','0');
INSERT INTO `wp_term_relationships` VALUES('44','15','0');

-- Tabla: wp_term_taxonomy
DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint unsigned NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_term_taxonomy` VALUES('1','1','category','','0','1');
INSERT INTO `wp_term_taxonomy` VALUES('2','2','product_type','','0','30');
INSERT INTO `wp_term_taxonomy` VALUES('3','3','product_type','','0','0');
INSERT INTO `wp_term_taxonomy` VALUES('4','4','product_type','','0','0');
INSERT INTO `wp_term_taxonomy` VALUES('5','5','product_type','','0','0');
INSERT INTO `wp_term_taxonomy` VALUES('6','6','product_visibility','','0','0');
INSERT INTO `wp_term_taxonomy` VALUES('7','7','product_visibility','','0','0');
INSERT INTO `wp_term_taxonomy` VALUES('8','8','product_visibility','','0','0');
INSERT INTO `wp_term_taxonomy` VALUES('9','9','product_visibility','','0','0');
INSERT INTO `wp_term_taxonomy` VALUES('10','10','product_visibility','','0','0');
INSERT INTO `wp_term_taxonomy` VALUES('11','11','product_visibility','','0','0');
INSERT INTO `wp_term_taxonomy` VALUES('12','12','product_visibility','','0','0');
INSERT INTO `wp_term_taxonomy` VALUES('13','13','product_visibility','','0','0');
INSERT INTO `wp_term_taxonomy` VALUES('14','14','product_visibility','','0','0');
INSERT INTO `wp_term_taxonomy` VALUES('15','15','product_cat','','0','1');
INSERT INTO `wp_term_taxonomy` VALUES('16','16','nav_menu','','0','3');
INSERT INTO `wp_term_taxonomy` VALUES('17','17','product_cat','','0','0');
INSERT INTO `wp_term_taxonomy` VALUES('18','18','product_cat','','0','0');
INSERT INTO `wp_term_taxonomy` VALUES('19','19','product_cat','','0','0');
INSERT INTO `wp_term_taxonomy` VALUES('20','20','product_cat','','0','0');
INSERT INTO `wp_term_taxonomy` VALUES('21','21','product_cat','','17','0');
INSERT INTO `wp_term_taxonomy` VALUES('22','22','product_cat','','17','4');
INSERT INTO `wp_term_taxonomy` VALUES('23','23','product_cat','','17','4');
INSERT INTO `wp_term_taxonomy` VALUES('24','24','product_cat','','17','1');
INSERT INTO `wp_term_taxonomy` VALUES('25','25','product_cat','','18','2');
INSERT INTO `wp_term_taxonomy` VALUES('26','26','product_cat','','18','3');
INSERT INTO `wp_term_taxonomy` VALUES('27','27','product_cat','','18','5');
INSERT INTO `wp_term_taxonomy` VALUES('28','28','product_cat','','19','5');
INSERT INTO `wp_term_taxonomy` VALUES('29','29','product_cat','','19','3');
INSERT INTO `wp_term_taxonomy` VALUES('30','30','product_cat','','19','2');
INSERT INTO `wp_term_taxonomy` VALUES('31','31','product_cat','','20','0');
INSERT INTO `wp_term_taxonomy` VALUES('32','32','product_cat','','20','0');

-- Tabla: wp_termmeta
DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_termmeta` VALUES('1','17','display_type','');
INSERT INTO `wp_termmeta` VALUES('2','18','display_type','');
INSERT INTO `wp_termmeta` VALUES('3','19','display_type','');
INSERT INTO `wp_termmeta` VALUES('4','20','display_type','');
INSERT INTO `wp_termmeta` VALUES('5','21','display_type','');
INSERT INTO `wp_termmeta` VALUES('6','22','display_type','');
INSERT INTO `wp_termmeta` VALUES('7','23','display_type','');
INSERT INTO `wp_termmeta` VALUES('8','24','display_type','');
INSERT INTO `wp_termmeta` VALUES('9','25','display_type','');
INSERT INTO `wp_termmeta` VALUES('10','26','display_type','');
INSERT INTO `wp_termmeta` VALUES('11','27','display_type','');
INSERT INTO `wp_termmeta` VALUES('12','28','display_type','');
INSERT INTO `wp_termmeta` VALUES('13','29','display_type','');
INSERT INTO `wp_termmeta` VALUES('14','30','display_type','');
INSERT INTO `wp_termmeta` VALUES('15','31','display_type','');
INSERT INTO `wp_termmeta` VALUES('16','32','display_type','');
INSERT INTO `wp_termmeta` VALUES('17','15','product_count_product_cat','1');
INSERT INTO `wp_termmeta` VALUES('18','23','product_count_product_cat','4');
INSERT INTO `wp_termmeta` VALUES('19','17','product_count_product_cat','9');
INSERT INTO `wp_termmeta` VALUES('20','22','product_count_product_cat','4');
INSERT INTO `wp_termmeta` VALUES('21','24','product_count_product_cat','1');
INSERT INTO `wp_termmeta` VALUES('22','25','product_count_product_cat','2');
INSERT INTO `wp_termmeta` VALUES('23','18','product_count_product_cat','10');
INSERT INTO `wp_termmeta` VALUES('24','26','product_count_product_cat','3');
INSERT INTO `wp_termmeta` VALUES('25','27','product_count_product_cat','5');
INSERT INTO `wp_termmeta` VALUES('26','28','product_count_product_cat','5');
INSERT INTO `wp_termmeta` VALUES('27','19','product_count_product_cat','10');
INSERT INTO `wp_termmeta` VALUES('28','29','product_count_product_cat','3');
INSERT INTO `wp_termmeta` VALUES('29','30','product_count_product_cat','2');

-- Tabla: wp_terms
DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_terms` VALUES('1','Uncategorized','uncategorized','0');
INSERT INTO `wp_terms` VALUES('2','simple','simple','0');
INSERT INTO `wp_terms` VALUES('3','grouped','grouped','0');
INSERT INTO `wp_terms` VALUES('4','variable','variable','0');
INSERT INTO `wp_terms` VALUES('5','external','external','0');
INSERT INTO `wp_terms` VALUES('6','exclude-from-search','exclude-from-search','0');
INSERT INTO `wp_terms` VALUES('7','exclude-from-catalog','exclude-from-catalog','0');
INSERT INTO `wp_terms` VALUES('8','featured','featured','0');
INSERT INTO `wp_terms` VALUES('9','outofstock','outofstock','0');
INSERT INTO `wp_terms` VALUES('10','rated-1','rated-1','0');
INSERT INTO `wp_terms` VALUES('11','rated-2','rated-2','0');
INSERT INTO `wp_terms` VALUES('12','rated-3','rated-3','0');
INSERT INTO `wp_terms` VALUES('13','rated-4','rated-4','0');
INSERT INTO `wp_terms` VALUES('14','rated-5','rated-5','0');
INSERT INTO `wp_terms` VALUES('15','Uncategorized','uncategorized','0');
INSERT INTO `wp_terms` VALUES('16','Redes Sociales','redes-sociales','0');
INSERT INTO `wp_terms` VALUES('17','Maquillaje','maquillaje','0');
INSERT INTO `wp_terms` VALUES('18','Electrónica','electronica','0');
INSERT INTO `wp_terms` VALUES('19','Electrodomésticos','electrodomesticos','0');
INSERT INTO `wp_terms` VALUES('20','Otros','otros','0');
INSERT INTO `wp_terms` VALUES('21','Labios','labios','0');
INSERT INTO `wp_terms` VALUES('22','Ojos','ojos','0');
INSERT INTO `wp_terms` VALUES('23','Rostro','rostro','0');
INSERT INTO `wp_terms` VALUES('24','Uñas','unas','0');
INSERT INTO `wp_terms` VALUES('25','Auriculares','auriculares','0');
INSERT INTO `wp_terms` VALUES('26','Cables y Cargadores','cables-y-cargadores','0');
INSERT INTO `wp_terms` VALUES('27','Accesorios','accesorios','0');
INSERT INTO `wp_terms` VALUES('28','Cocina','cocina','0');
INSERT INTO `wp_terms` VALUES('29','Limpieza','limpieza','0');
INSERT INTO `wp_terms` VALUES('30','Pequeños','pequenos','0');
INSERT INTO `wp_terms` VALUES('31','Accesorios','accesorios-otros','0');
INSERT INTO `wp_terms` VALUES('32','Descuentos','descuentos','0');

-- Tabla: wp_usermeta
DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_usermeta` VALUES('1','1','nickname','admin');
INSERT INTO `wp_usermeta` VALUES('2','1','first_name','');
INSERT INTO `wp_usermeta` VALUES('3','1','last_name','');
INSERT INTO `wp_usermeta` VALUES('4','1','description','');
INSERT INTO `wp_usermeta` VALUES('5','1','rich_editing','true');
INSERT INTO `wp_usermeta` VALUES('6','1','syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES('7','1','infinite_scrolling','true');
INSERT INTO `wp_usermeta` VALUES('8','1','comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES('9','1','admin_color','modern');
INSERT INTO `wp_usermeta` VALUES('10','1','use_ssl','0');
INSERT INTO `wp_usermeta` VALUES('11','1','show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES('12','1','locale','');
INSERT INTO `wp_usermeta` VALUES('13','1','wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES('14','1','wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES('15','1','dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES('16','1','default_password_nag','1');
INSERT INTO `wp_usermeta` VALUES('17','1','show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES('18','1','_woocommerce_persistent_cart_1','a:1:{s:4:\"cart\";a:0:{}}');

-- Tabla: wp_users
DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_users` VALUES('1','admin','$wp$2y$10$tRV/2MrMaV57ponWJmbuweOjeBWVCMTQMm0VokA2wl4ThgQm22S1C','admin','tiendappchile@gmail.com','http://tienda-online.local','2026-09-04 03:30:49','','0','admin');

-- Tabla: wp_wc_admin_note_actions
DROP TABLE IF EXISTS `wp_wc_admin_note_actions`;
CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `note_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonce_action` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `nonce_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `note_id` (`note_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


-- Tabla: wp_wc_admin_notes
DROP TABLE IF EXISTS `wp_wc_admin_notes`;
CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_520_ci,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT '0',
  `layout` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'info',
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


-- Tabla: wp_wc_category_lookup
DROP TABLE IF EXISTS `wp_wc_category_lookup`;
CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`category_tree_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_wc_category_lookup` VALUES('17','17');
INSERT INTO `wp_wc_category_lookup` VALUES('17','21');
INSERT INTO `wp_wc_category_lookup` VALUES('17','22');
INSERT INTO `wp_wc_category_lookup` VALUES('17','23');
INSERT INTO `wp_wc_category_lookup` VALUES('17','24');
INSERT INTO `wp_wc_category_lookup` VALUES('18','18');
INSERT INTO `wp_wc_category_lookup` VALUES('18','25');
INSERT INTO `wp_wc_category_lookup` VALUES('18','26');
INSERT INTO `wp_wc_category_lookup` VALUES('18','27');
INSERT INTO `wp_wc_category_lookup` VALUES('19','19');
INSERT INTO `wp_wc_category_lookup` VALUES('19','28');
INSERT INTO `wp_wc_category_lookup` VALUES('19','29');
INSERT INTO `wp_wc_category_lookup` VALUES('19','30');
INSERT INTO `wp_wc_category_lookup` VALUES('20','20');
INSERT INTO `wp_wc_category_lookup` VALUES('20','31');
INSERT INTO `wp_wc_category_lookup` VALUES('20','32');
INSERT INTO `wp_wc_category_lookup` VALUES('21','21');
INSERT INTO `wp_wc_category_lookup` VALUES('22','22');
INSERT INTO `wp_wc_category_lookup` VALUES('23','23');
INSERT INTO `wp_wc_category_lookup` VALUES('24','24');
INSERT INTO `wp_wc_category_lookup` VALUES('25','25');
INSERT INTO `wp_wc_category_lookup` VALUES('26','26');
INSERT INTO `wp_wc_category_lookup` VALUES('27','27');
INSERT INTO `wp_wc_category_lookup` VALUES('28','28');
INSERT INTO `wp_wc_category_lookup` VALUES('29','29');
INSERT INTO `wp_wc_category_lookup` VALUES('30','30');
INSERT INTO `wp_wc_category_lookup` VALUES('31','31');
INSERT INTO `wp_wc_category_lookup` VALUES('32','32');

-- Tabla: wp_wc_customer_lookup
DROP TABLE IF EXISTS `wp_wc_customer_lookup`;
CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


-- Tabla: wp_wc_download_log
DROP TABLE IF EXISTS `wp_wc_download_log`;
CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`download_log_id`),
  KEY `permission_id` (`permission_id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


-- Tabla: wp_wc_email_unsubscribes
DROP TABLE IF EXISTS `wp_wc_email_unsubscribes`;
CREATE TABLE `wp_wc_email_unsubscribes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email_hash` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email_kind` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `action` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email_hash_kind` (`email_hash`,`email_kind`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


-- Tabla: wp_wc_order_coupon_lookup
DROP TABLE IF EXISTS `wp_wc_order_coupon_lookup`;
CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint unsigned NOT NULL,
  `coupon_id` bigint NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`coupon_id`),
  KEY `coupon_id` (`coupon_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


-- Tabla: wp_wc_order_product_lookup
DROP TABLE IF EXISTS `wp_wc_order_product_lookup`;
CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `product_qty` int NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT '0',
  `product_gross_revenue` double NOT NULL DEFAULT '0',
  `coupon_amount` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `shipping_amount` double NOT NULL DEFAULT '0',
  `shipping_tax_amount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_item_id`,`order_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `customer_id` (`customer_id`),
  KEY `date_created` (`date_created`),
  KEY `customer_product_date` (`customer_id`,`product_id`,`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


-- Tabla: wp_wc_order_stats
DROP TABLE IF EXISTS `wp_wc_order_stats`;
CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_paid` datetime DEFAULT '0000-00-00 00:00:00',
  `date_completed` datetime DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int NOT NULL DEFAULT '0',
  `total_sales` double NOT NULL DEFAULT '0',
  `tax_total` double NOT NULL DEFAULT '0',
  `shipping_total` double NOT NULL DEFAULT '0',
  `net_total` double NOT NULL DEFAULT '0',
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `date_created` (`date_created`),
  KEY `customer_id` (`customer_id`),
  KEY `status` (`status`),
  KEY `idx_date_paid_status_parent` (`date_paid`,`status`,`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


-- Tabla: wp_wc_order_tax_lookup
DROP TABLE IF EXISTS `wp_wc_order_tax_lookup`;
CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint unsigned NOT NULL,
  `tax_rate_id` bigint unsigned NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT '0',
  `order_tax` double NOT NULL DEFAULT '0',
  `total_tax` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`tax_rate_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


-- Tabla: wp_wc_product_attributes_lookup
DROP TABLE IF EXISTS `wp_wc_product_attributes_lookup`;
CREATE TABLE `wp_wc_product_attributes_lookup` (
  `product_id` bigint NOT NULL,
  `product_or_parent_id` bigint NOT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `term_id` bigint NOT NULL,
  `is_variation_attribute` tinyint(1) NOT NULL,
  `in_stock` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_or_parent_id`,`term_id`,`product_id`,`taxonomy`),
  KEY `is_variation_attribute_term_id` (`is_variation_attribute`,`term_id`),
  KEY `taxonomy_term_id_in_stock_product_or_parent_id` (`taxonomy`,`term_id`,`in_stock`,`product_or_parent_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


-- Tabla: wp_wc_product_download_directories
DROP TABLE IF EXISTS `wp_wc_product_download_directories`;
CREATE TABLE `wp_wc_product_download_directories` (
  `url_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(256) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`url_id`),
  KEY `url` (`url`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_wc_product_download_directories` VALUES('1','file://C:/Users/ac17157/Local Sites/tienda-online/app/public/wp-content/uploads/woocommerce_uploads/','1');
INSERT INTO `wp_wc_product_download_directories` VALUES('2','http://tienda-online.local/wp-content/uploads/woocommerce_uploads/','1');

-- Tabla: wp_wc_product_meta_lookup
DROP TABLE IF EXISTS `wp_wc_product_meta_lookup`;
CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `global_unique_id` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint DEFAULT '0',
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`product_id`),
  KEY `virtual` (`virtual`),
  KEY `downloadable` (`downloadable`),
  KEY `stock_status` (`stock_status`),
  KEY `stock_quantity` (`stock_quantity`),
  KEY `onsale` (`onsale`),
  KEY `min_max_price` (`min_price`,`max_price`),
  KEY `sku` (`sku`(50))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_wc_product_meta_lookup` VALUES('15','MAQ-002','','0','0','7990.0000','7990.0000','0','40','instock','0','0.00','0','taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES('16','MAQ-003','','0','0','6990.0000','6990.0000','0','35','instock','0','0.00','0','taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES('17','MAQ-004','','0','0','12990.0000','12990.0000','0','20','instock','0','0.00','0','taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES('18','MAQ-005','','0','0','5990.0000','5990.0000','0','25','instock','0','0.00','0','taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES('19','MAQ-006','','0','0','6990.0000','6990.0000','0','30','instock','0','0.00','0','taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES('20','MAQ-007','','0','0','7990.0000','7990.0000','0','25','instock','0','0.00','0','taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES('21','MAQ-008','','0','0','4990.0000','4990.0000','0','50','instock','0','0.00','0','taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES('22','MAQ-009','','0','0','5990.0000','5990.0000','0','35','instock','0','0.00','0','taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES('23','MAQ-010','','0','0','8990.0000','8990.0000','0','20','instock','0','0.00','0','taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES('24','ELEC-001','','0','0','24990.0000','24990.0000','0','15','instock','0','0.00','0','taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES('25','ELEC-002','','0','0','9990.0000','9990.0000','0','40','instock','0','0.00','0','taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES('26','ELEC-003','','0','0','4990.0000','4990.0000','0','60','instock','0','0.00','0','taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES('27','ELEC-004','','0','0','6990.0000','6990.0000','0','30','instock','0','0.00','0','taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES('28','ELEC-005','','0','0','29990.0000','29990.0000','0','10','instock','0','0.00','0','taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES('29','ELEC-006','','0','0','19990.0000','19990.0000','0','15','instock','0','0.00','0','taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES('30','ELEC-007','','0','0','18990.0000','18990.0000','0','20','instock','0','0.00','0','taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES('31','ELEC-008','','0','0','8990.0000','8990.0000','0','25','instock','0','0.00','0','taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES('32','ELEC-009','','0','0','14990.0000','14990.0000','0','18','instock','0','0.00','0','taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES('33','ELEC-010','','0','0','15990.0000','15990.0000','0','22','instock','0','0.00','0','taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES('34','ELE-001','','0','0','19990.0000','19990.0000','0','12','instock','0','0.00','0','taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES('35','ELE-002','','0','0','15990.0000','15990.0000','0','10','instock','0','0.00','0','taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES('36','ELE-003','','0','0','17990.0000','17990.0000','0','8','instock','0','0.00','0','taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES('37','ELE-004','','0','0','24990.0000','24990.0000','0','6','instock','0','0.00','0','taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES('38','ELE-005','','0','0','14990.0000','14990.0000','0','14','instock','0','0.00','0','taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES('39','ELE-006','','0','0','12990.0000','12990.0000','0','10','instock','0','0.00','0','taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES('40','ELE-007','','0','0','17990.0000','17990.0000','0','12','instock','0','0.00','0','taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES('41','ELE-008','','0','0','9990.0000','9990.0000','0','20','instock','0','0.00','0','taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES('42','ELE-009','','0','0','21990.0000','21990.0000','0','10','instock','0','0.00','0','taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES('43','ELE-010','','0','0','59990.0000','59990.0000','0','5','instock','0','0.00','0','taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES('44','MAQ-001','','0','0','5990.0000','5990.0000','0','30','instock','0','0.00','0','taxable','');

-- Tabla: wp_wc_rate_limits
DROP TABLE IF EXISTS `wp_wc_rate_limits`;
CREATE TABLE `wp_wc_rate_limits` (
  `rate_limit_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `rate_limit_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `rate_limit_expiry` bigint unsigned NOT NULL,
  `rate_limit_remaining` smallint NOT NULL DEFAULT '0',
  PRIMARY KEY (`rate_limit_id`),
  UNIQUE KEY `rate_limit_key` (`rate_limit_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


-- Tabla: wp_wc_reserved_stock
DROP TABLE IF EXISTS `wp_wc_reserved_stock`;
CREATE TABLE `wp_wc_reserved_stock` (
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT '0',
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_id`,`product_id`),
  KEY `product_id_expires` (`product_id`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


-- Tabla: wp_wc_tax_rate_classes
DROP TABLE IF EXISTS `wp_wc_tax_rate_classes`;
CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_class_id`),
  UNIQUE KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_wc_tax_rate_classes` VALUES('1','Reduced rate','reduced-rate');
INSERT INTO `wp_wc_tax_rate_classes` VALUES('2','Zero rate','zero-rate');

-- Tabla: wp_wc_webhooks
DROP TABLE IF EXISTS `wp_wc_webhooks`;
CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint NOT NULL,
  `failure_count` smallint NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`webhook_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


-- Tabla: wp_woocommerce_api_keys
DROP TABLE IF EXISTS `wp_woocommerce_api_keys`;
CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


-- Tabla: wp_woocommerce_attribute_taxonomies
DROP TABLE IF EXISTS `wp_woocommerce_attribute_taxonomies`;
CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


-- Tabla: wp_woocommerce_downloadable_product_permissions
DROP TABLE IF EXISTS `wp_woocommerce_downloadable_product_permissions`;
CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`),
  KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`),
  KEY `idx_user_email` (`user_email`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


-- Tabla: wp_woocommerce_log
DROP TABLE IF EXISTS `wp_woocommerce_log`;
CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


-- Tabla: wp_woocommerce_order_itemmeta
DROP TABLE IF EXISTS `wp_woocommerce_order_itemmeta`;
CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


-- Tabla: wp_woocommerce_order_items
DROP TABLE IF EXISTS `wp_woocommerce_order_items`;
CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


-- Tabla: wp_woocommerce_payment_tokenmeta
DROP TABLE IF EXISTS `wp_woocommerce_payment_tokenmeta`;
CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


-- Tabla: wp_woocommerce_payment_tokens
DROP TABLE IF EXISTS `wp_woocommerce_payment_tokens`;
CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


-- Tabla: wp_woocommerce_sessions
DROP TABLE IF EXISTS `wp_woocommerce_sessions`;
CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint unsigned NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_key` (`session_key`),
  KEY `session_expiry` (`session_expiry`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_woocommerce_sessions` VALUES('1','1','a:1:{s:8:\"customer\";s:762:\"a:28:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:23:\"tiendappchile@gmail.com\";s:7:\"address\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:2:\"CL\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:17:\"shipping_postcode\";s:0:\"\";s:16:\"shipping_country\";s:2:\"CL\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:9:\"meta_data\";a:0:{}}\";}','1789098137');

-- Tabla: wp_woocommerce_shipping_zone_locations
DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_locations`;
CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `zone_id` (`zone_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_woocommerce_shipping_zone_locations` VALUES('1','1','CL','country');

-- Tabla: wp_woocommerce_shipping_zone_methods
DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_methods`;
CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint unsigned NOT NULL,
  `instance_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`),
  KEY `zone_id` (`zone_id`),
  KEY `method_id` (`method_id`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


-- Tabla: wp_woocommerce_shipping_zones
DROP TABLE IF EXISTS `wp_woocommerce_shipping_zones`;
CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint unsigned NOT NULL,
  PRIMARY KEY (`zone_id`),
  KEY `zone_order_id` (`zone_order`,`zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_woocommerce_shipping_zones` VALUES('1','HUP - Kit Ecommerce Chile (NO BORRAR)','0');

-- Tabla: wp_woocommerce_tax_rate_locations
DROP TABLE IF EXISTS `wp_woocommerce_tax_rate_locations`;
CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_woocommerce_tax_rate_locations` VALUES('1','CL','1','country');

-- Tabla: wp_woocommerce_tax_rates
DROP TABLE IF EXISTS `wp_woocommerce_tax_rates`;
CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint unsigned NOT NULL,
  `tax_rate_compound` int NOT NULL DEFAULT '0',
  `tax_rate_shipping` int NOT NULL DEFAULT '1',
  `tax_rate_order` bigint unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_woocommerce_tax_rates` VALUES('1','CL','','19.0000','IVA','1','0','1','0','');

