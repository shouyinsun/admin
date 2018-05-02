/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : adminstore

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2018-04-30 23:15:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addDate` datetime DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `ids` varchar(255) DEFAULT NULL,
  `lastDate` datetime DEFAULT NULL,
  `levelInfo` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `sortNum` int(11) DEFAULT NULL,
  `geo` varchar(255) DEFAULT NULL,
  `govCode` varchar(12) DEFAULT NULL,
  `lat` float DEFAULT NULL,
  `lng` float DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `area_type` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
  -- KEY `FKtn7all8h9e6fi9pspra60rht5` (`pid`),
  -- CONSTRAINT `FKtn7all8h9e6fi9pspra60rht5` FOREIGN KEY (`pid`) REFERENCES `area` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of area
-- ----------------------------

-- ----------------------------
-- Table structure for config_data_version
-- ----------------------------
DROP TABLE IF EXISTS `config_data_version`;
CREATE TABLE `config_data_version` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addDate` datetime DEFAULT NULL,
  `lastDate` datetime DEFAULT NULL,
  `sequence` varchar(255) DEFAULT NULL,
  `step` int(11) DEFAULT NULL,
  `versionnum` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_f8c3y9hevq9jmdrb1wjyyqut` (`versionnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config_data_version
-- ----------------------------

-- ----------------------------
-- Table structure for flow_define
-- ----------------------------
DROP TABLE IF EXISTS `flow_define`;
CREATE TABLE `flow_define` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addDate` datetime DEFAULT NULL,
  `lastDate` datetime DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flow_define
-- ----------------------------

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addDate` datetime DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `ids` varchar(255) DEFAULT NULL,
  `lastDate` datetime DEFAULT NULL,
  `levelInfo` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `sortNum` int(11) DEFAULT NULL,
  `catalog` int(11) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `nums` bigint(20) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
  -- KEY `FKqcf9gem97gqa5qjm4d3elcqt5` (`pid`),
  -- CONSTRAINT `FKqcf9gem97gqa5qjm4d3elcqt5` FOREIGN KEY (`pid`) REFERENCES `menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '2017-09-25 14:25:39', '', '1', '2017-09-25 14:25:39', '1', '1', '根节点', '64', '0', null, null, null, null, null, null);
INSERT INTO `menu` VALUES ('2', '2017-11-09 14:19:34', null, '1,2', '2017-11-09 14:19:34', '2', '2', '系统设置', '21', '55', '0', 'fa  fa-gear', '0', '', '2', '1');
INSERT INTO `menu` VALUES ('3', '2017-09-25 14:34:37', null, '1,2,3', '2017-09-25 14:34:37', '3', '3', '菜单管理', '4', '0', '0', 'fa  fa-reorder', '0', 'admin/menu/view_list.htm', 'menu', '2');
INSERT INTO `menu` VALUES ('4', '2017-09-25 14:36:59', null, '1,2,4', '2017-09-25 14:36:59', '3', '5', '角色管理', '6', '0', '0', 'fa  fa-tree', '0', 'admin/userrole/view_list.htm', 'userrole', '2');
INSERT INTO `menu` VALUES ('19', '2017-12-27 14:04:52', null, '1,19', '2017-12-27 14:04:52', '2', '38', '控制台', '39', '0', '0', 'fa fa-home', '0', 'admin/index.htm', '19', '1');
INSERT INTO `menu` VALUES ('20', '2017-12-27 14:19:54', null, '1,20', '2017-12-27 14:19:54', '2', '40', '用户管理', '47', '0', '0', 'fa  fa-users', '0', '', '20', '1');
INSERT INTO `menu` VALUES ('21', '2017-12-27 14:27:31', null, '1,20,21', '2017-12-27 14:27:31', '3', '41', '用户管理', '42', '0', '0', 'fa fa-user', '0', 'admin/member/view_list.htm', 'member', '20');
INSERT INTO `menu` VALUES ('22', '2017-12-27 14:20:51', null, '1,20,22', '2017-12-27 14:20:51', '3', '43', '账号管理', '44', '0', '0', 'fa fa-list', '0', 'admin/useraccount/view_list.htm', 'useraccount', '20');
INSERT INTO `menu` VALUES ('23', '2017-12-27 15:05:28', null, '1,20,23', '2017-12-27 15:05:28', '3', '45', '登陆日志', '46', '0', '0', 'fa fa-support', '0', 'admin/userloginlog/view_list.htm', 'userloginlog', '20');

-- ----------------------------
-- Table structure for plugin_config
-- ----------------------------
DROP TABLE IF EXISTS `plugin_config`;
CREATE TABLE `plugin_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addDate` datetime DEFAULT NULL,
  `lastDate` datetime DEFAULT NULL,
  `sortNum` int(11) DEFAULT NULL,
  `isEnabled` bit(1) NOT NULL,
  `pluginId` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_d80yc0eis8aaqm59fnxc5rs0l` (`pluginId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plugin_config
-- ----------------------------

-- ----------------------------
-- Table structure for plugin_config_attribute
-- ----------------------------
DROP TABLE IF EXISTS `plugin_config_attribute`;
CREATE TABLE `plugin_config_attribute` (
  `PluginConfig_id` bigint(20) NOT NULL,
  `attributes` varchar(255) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`PluginConfig_id`,`name`)
  -- CONSTRAINT `FK9s4k66fykxc5x1oo58bg0ku82` FOREIGN KEY (`PluginConfig_id`) REFERENCES `plugin_config` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plugin_config_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for site_app
-- ----------------------------
DROP TABLE IF EXISTS `site_app`;
CREATE TABLE `site_app` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addDate` datetime DEFAULT NULL,
  `lastDate` datetime DEFAULT NULL,
  `appKey` varchar(255) DEFAULT NULL,
  `appSecret` varchar(255) DEFAULT NULL,
  `counts` bigint(20) DEFAULT NULL,
  `downUrl` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `packageName` varchar(255) DEFAULT NULL,
  `system` varchar(255) DEFAULT NULL,
  `versionCode` int(11) DEFAULT NULL,
  `versionName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_jfx5shexfh9lo32836m2t62ga` (`packageName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of site_app
-- ----------------------------

-- ----------------------------
-- Table structure for site_app_version
-- ----------------------------
DROP TABLE IF EXISTS `site_app_version`;
CREATE TABLE `site_app_version` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addDate` datetime DEFAULT NULL,
  `lastDate` datetime DEFAULT NULL,
  `downUrl` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `versionCode` int(11) DEFAULT NULL,
  `versionName` varchar(255) DEFAULT NULL,
  `app_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
  -- KEY `FK9rgjxw6r5h7gf0e7ijfbademt` (`app_id`),
  -- CONSTRAINT `FK9rgjxw6r5h7gf0e7ijfbademt` FOREIGN KEY (`app_id`) REFERENCES `site_app` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of site_app_version
-- ----------------------------

-- ----------------------------
-- Table structure for site_config
-- ----------------------------
DROP TABLE IF EXISTS `site_config`;
CREATE TABLE `site_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addDate` datetime DEFAULT NULL,
  `lastDate` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `domainName` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `icp` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `pageSize` int(11) DEFAULT NULL,
  `shortName` varchar(255) DEFAULT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of site_config
-- ----------------------------
INSERT INTO `site_config` VALUES ('1', '2018-04-30 17:04:15', '2018-04-30 17:04:15', null, null, null, null, null, null, null, null, 'default', null);

-- ----------------------------
-- Table structure for site_link
-- ----------------------------
DROP TABLE IF EXISTS `site_link`;
CREATE TABLE `site_link` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addDate` datetime DEFAULT NULL,
  `lastDate` datetime DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sortNum` int(11) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `linkType_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
  -- KEY `FK1316ht5o7bmu4jbixoso45paa` (`linkType_id`),
  -- CONSTRAINT `FK1316ht5o7bmu4jbixoso45paa` FOREIGN KEY (`linkType_id`) REFERENCES `site_link_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of site_link
-- ----------------------------

-- ----------------------------
-- Table structure for site_link_type
-- ----------------------------
DROP TABLE IF EXISTS `site_link_type`;
CREATE TABLE `site_link_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addDate` datetime DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `ids` varchar(255) DEFAULT NULL,
  `lastDate` datetime DEFAULT NULL,
  `levelInfo` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `sortNum` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
  -- KEY `FKsve8aryqrci3acgot8k7rt6ix` (`pid`),
  -- CONSTRAINT `FKsve8aryqrci3acgot8k7rt6ix` FOREIGN KEY (`pid`) REFERENCES `site_link_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of site_link_type
-- ----------------------------
INSERT INTO `site_link_type` VALUES ('1', '2017-12-27 13:59:20', '', '1', '2017-12-27 13:59:20', '1', '1', '根节点', '6', '0', null);
INSERT INTO `site_link_type` VALUES ('2', '2017-12-29 08:52:53', '001', '1,2', '2017-12-29 08:52:53', '2', '2', '开源网站', '3', null, '1');
INSERT INTO `site_link_type` VALUES ('3', '2017-12-29 08:53:07', '002', '1,3', '2017-12-29 08:53:07', '2', '4', '朋友网站', '5', null, '1');

-- ----------------------------
-- Table structure for site_template_web
-- ----------------------------
DROP TABLE IF EXISTS `site_template_web`;
CREATE TABLE `site_template_web` (
  `id` varchar(255) NOT NULL,
  `catalog` int(11) DEFAULT NULL,
  `demo` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of site_template_web
-- ----------------------------

-- ----------------------------
-- Table structure for site_theme_config
-- ----------------------------
DROP TABLE IF EXISTS `site_theme_config`;
CREATE TABLE `site_theme_config` (
  `id` varchar(255) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `path` varchar(20) DEFAULT NULL,
  `screenShot` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of site_theme_config
-- ----------------------------
INSERT INTO `site_theme_config` VALUES ('default', null, null, null);
INSERT INTO `site_theme_config` VALUES ('defaultmobile', null, null, null);

-- ----------------------------
-- Table structure for task
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addDate` datetime DEFAULT NULL,
  `lastDate` datetime DEFAULT NULL,
  `cron` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `nums` bigint(20) DEFAULT NULL,
  `recordState` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
  -- KEY `FKqpj60iiafuf9b7dh5xtxoeusw` (`user_id`),
  -- CONSTRAINT `FKqpj60iiafuf9b7dh5xtxoeusw` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of task
-- ----------------------------
INSERT INTO `task` VALUES ('1', '2018-01-09 09:31:46', '2018-01-09 09:32:05', '*/5 * * * * ?', '测试访问网站', 'sssss', '606', '4', '0', 'http://www.yichisancun.com/', null);

-- ----------------------------
-- Table structure for task_attribute
-- ----------------------------
DROP TABLE IF EXISTS `task_attribute`;
CREATE TABLE `task_attribute` (
  `task_id` bigint(20) NOT NULL,
  `attr` varchar(100) DEFAULT NULL,
  `name` varchar(36) NOT NULL
  -- KEY `FKkkpewueys70bcx84x9yd2dsec` (`task_id`),
  -- CONSTRAINT `FKkkpewueys70bcx84x9yd2dsec` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of task_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for task_record
-- ----------------------------
DROP TABLE IF EXISTS `task_record`;
CREATE TABLE `task_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addDate` datetime DEFAULT NULL,
  `lastDate` datetime DEFAULT NULL,
  `expensesTime` bigint(20) DEFAULT NULL,
  `note` varchar(20) DEFAULT NULL,
  `task_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
  -- KEY `FKhcsb7k9mkjpq63wpmfopg0tty` (`task_id`),
  -- CONSTRAINT `FKhcsb7k9mkjpq63wpmfopg0tty` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of task_record
-- ----------------------------
INSERT INTO `task_record` VALUES ('1', '2018-01-09 09:32:01', '2018-01-09 09:32:01', '541', '', '1');
INSERT INTO `task_record` VALUES ('2', '2018-01-09 09:32:01', '2018-01-09 09:32:01', '407', '', '1');
INSERT INTO `task_record` VALUES ('3', '2018-01-09 09:32:01', '2018-01-09 09:32:01', '290', '', '1');
INSERT INTO `task_record` VALUES ('4', '2018-01-09 09:32:05', '2018-01-09 09:32:05', '293', '', '1');

-- ----------------------------
-- Table structure for user_account
-- ----------------------------
DROP TABLE IF EXISTS `user_account`;
CREATE TABLE `user_account` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addDate` datetime DEFAULT NULL,
  `lastDate` datetime DEFAULT NULL,
  `accountType` int(11) DEFAULT NULL,
  `loginSize` int(11) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `salt` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
  -- KEY `FKloyhlvrn82g8811wyjaa8ehm0` (`user_id`),
  -- CONSTRAINT `FKloyhlvrn82g8811wyjaa8ehm0` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_account
-- ----------------------------
INSERT INTO `user_account` VALUES ('1', '2017-12-27 13:53:50', '2018-04-30 22:43:28', '2', '120', 'b63e05a75d3c13c53becedeb885bda5b67a6664a', 'e1e8c5fab5a28e13', 'admin', '1');
INSERT INTO `user_account` VALUES ('5', '2018-04-30 22:44:36', '2018-04-30 22:44:48', '2', '2', '6332ed647d0bb14d3bb3d23437d4520a7e4ca0cf', '4374b54ad7a254dc', 'xuchao', '1221');
INSERT INTO `user_account` VALUES ('6', '2018-04-30 22:45:37', '2018-04-30 23:09:43', '2', '14', 'e6803d9350fa38ba77edc9384e97f33a1dee1d73', 'f456ecc7e1013223', 'xufu', '1222');
INSERT INTO `user_account` VALUES ('7', '2018-04-30 23:06:13', '2018-04-30 23:06:20', '2', '2', '67f28a2976122f2cb8274aaf77d9179ae8bb384a', '433ac568dbdb34b8', 'xxxx', '1223');

-- ----------------------------
-- Table structure for user_code
-- ----------------------------
DROP TABLE IF EXISTS `user_code`;
CREATE TABLE `user_code` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addDate` datetime DEFAULT NULL,
  `lastDate` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `loginSize` int(11) DEFAULT NULL,
  `userid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
  -- KEY `FKfulmxb2y8nrres564ymc2kqr4` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_code
-- ----------------------------

-- ----------------------------
-- Table structure for user_feedback
-- ----------------------------
DROP TABLE IF EXISTS `user_feedback`;
CREATE TABLE `user_feedback` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addDate` datetime DEFAULT NULL,
  `lastDate` datetime DEFAULT NULL,
  `contents` varchar(5000) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `exts` varchar(5000) DEFAULT NULL,
  `feedContent` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `userid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
  -- KEY `FKfjxq06hj1obi36glqqlbimt4g` (`userid`),
  -- CONSTRAINT `FKfjxq06hj1obi36glqqlbimt4g` FOREIGN KEY (`userid`) REFERENCES `user_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addDate` datetime DEFAULT NULL,
  `lastDate` datetime DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `catalog` int(11) DEFAULT NULL,
  `loginSize` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `registerType` varchar(20) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `edge` varchar(255) DEFAULT NULL,
  `introduce` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `household_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
  -- KEY `FK3193uu2asgocbhkk1mus5wfd7` (`household_id`),
  -- CONSTRAINT `FK3193uu2asgocbhkk1mus5wfd7` FOREIGN KEY (`household_id`) REFERENCES `area` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1224 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', '2017-12-27 14:44:05', '2018-04-30 22:43:28', null, '0', '162', 'admin', null, '账号', null, null, null, null, null, null);
INSERT INTO `user_info` VALUES ('1221', '2018-04-30 22:44:36', '2018-04-30 22:44:48', null, null, '1', 'xuchao', null, '账号', null, null, null, null, null, null);
INSERT INTO `user_info` VALUES ('1222', '2018-04-30 23:05:00', '2018-04-30 23:09:43', null, '0', '2', 'xufu', null, '账号', null, null, null, null, null, null);
INSERT INTO `user_info` VALUES ('1223', '2018-04-30 23:07:28', '2018-04-30 23:07:28', null, '0', '0', 'xxxx', null, '账号', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for user_info_attribute
-- ----------------------------
DROP TABLE IF EXISTS `user_info_attribute`;
CREATE TABLE `user_info_attribute` (
  `user_id` bigint(20) NOT NULL,
  `attr` varchar(100) DEFAULT NULL,
  `name` varchar(36) NOT NULL,
  PRIMARY KEY (`user_id`,`name`)
  -- CONSTRAINT `FKjf8g1vng9lpmniy8u187j7t0` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for user_label
-- ----------------------------
DROP TABLE IF EXISTS `user_label`;
CREATE TABLE `user_label` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addDate` datetime DEFAULT NULL,
  `lastDate` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_cal21cv5bdi7ee791jvtvji3t` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_label
-- ----------------------------

-- ----------------------------
-- Table structure for user_label_links
-- ----------------------------
DROP TABLE IF EXISTS `user_label_links`;
CREATE TABLE `user_label_links` (
  `user_id` bigint(20) NOT NULL,
  `labels_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`labels_id`)
  -- KEY `FKe69vxi1aiq7ww12d8pf03hrn1` (`labels_id`),
  -- CONSTRAINT `FK5njpwjktgb87ggnjm63vejdwc` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`id`),
  -- CONSTRAINT `FKe69vxi1aiq7ww12d8pf03hrn1` FOREIGN KEY (`labels_id`) REFERENCES `user_label` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_label_links
-- ----------------------------

-- ----------------------------
-- Table structure for user_login_log
-- ----------------------------
DROP TABLE IF EXISTS `user_login_log`;
CREATE TABLE `user_login_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addDate` datetime DEFAULT NULL,
  `lastDate` datetime DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
  -- KEY `FKj91w0nnfocpdp796lr3ot4lxs` (`user_id`),
  -- CONSTRAINT `FKj91w0nnfocpdp796lr3ot4lxs` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_login_log
-- ----------------------------
INSERT INTO `user_login_log` VALUES ('21', '2018-04-30 17:04:54', '2018-04-30 17:04:54', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('22', '2018-04-30 22:43:10', '2018-04-30 22:43:10', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('23', '2018-04-30 22:43:20', '2018-04-30 22:43:20', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('24', '2018-04-30 22:43:28', '2018-04-30 22:43:28', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('25', '2018-04-30 22:44:48', '2018-04-30 22:44:48', '127.0.0.1', '1', '1221', null, null);
INSERT INTO `user_login_log` VALUES ('26', '2018-04-30 22:45:59', '2018-04-30 22:45:59', '127.0.0.1', '1', '1222', null, null);
INSERT INTO `user_login_log` VALUES ('27', '2018-04-30 23:00:11', '2018-04-30 23:00:11', '127.0.0.1', '1', '1222', null, null);
INSERT INTO `user_login_log` VALUES ('28', '2018-04-30 23:01:12', '2018-04-30 23:01:12', '127.0.0.1', '1', '1222', null, null);
INSERT INTO `user_login_log` VALUES ('29', '2018-04-30 23:02:41', '2018-04-30 23:02:41', '127.0.0.1', '1', '1222', null, null);
INSERT INTO `user_login_log` VALUES ('30', '2018-04-30 23:02:49', '2018-04-30 23:02:49', '127.0.0.1', '1', '1222', null, null);
INSERT INTO `user_login_log` VALUES ('31', '2018-04-30 23:06:20', '2018-04-30 23:06:20', '127.0.0.1', '1', '1223', null, null);
INSERT INTO `user_login_log` VALUES ('32', '2018-04-30 23:06:34', '2018-04-30 23:06:34', '127.0.0.1', '1', '1222', null, null);
INSERT INTO `user_login_log` VALUES ('33', '2018-04-30 23:09:43', '2018-04-30 23:09:43', '127.0.0.1', '1', '1222', null, null);

-- ----------------------------
-- Table structure for user_message
-- ----------------------------
DROP TABLE IF EXISTS `user_message`;
CREATE TABLE `user_message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addDate` datetime DEFAULT NULL,
  `lastDate` datetime DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `subject_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
  -- KEY `FKprww0bw44m48y4xxbkv13u5g7` (`subject_id`),
  -- KEY `FKcu2q6axhu3g31g1vbuosec525` (`user_id`),
  -- CONSTRAINT `FKcu2q6axhu3g31g1vbuosec525` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`id`),
  -- CONSTRAINT `FKprww0bw44m48y4xxbkv13u5g7` FOREIGN KEY (`subject_id`) REFERENCES `user_message_subject` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_message
-- ----------------------------

-- ----------------------------
-- Table structure for user_message_member
-- ----------------------------
DROP TABLE IF EXISTS `user_message_member`;
CREATE TABLE `user_message_member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addDate` datetime DEFAULT NULL,
  `lastDate` datetime DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `subjectid` bigint(20) DEFAULT NULL,
  `uid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
  -- KEY `FKq810ie1390jw6r2umbsvtpusf` (`subjectid`),
  -- KEY `FK2lven49o6lj1fnlb47lwjs9g9` (`uid`),
  -- CONSTRAINT `FK2lven49o6lj1fnlb47lwjs9g9` FOREIGN KEY (`uid`) REFERENCES `user_info` (`id`),
  -- CONSTRAINT `FKq810ie1390jw6r2umbsvtpusf` FOREIGN KEY (`subjectid`) REFERENCES `user_message_subject` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_message_member
-- ----------------------------

-- ----------------------------
-- Table structure for user_message_subject
-- ----------------------------
DROP TABLE IF EXISTS `user_message_subject`;
CREATE TABLE `user_message_subject` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addDate` datetime DEFAULT NULL,
  `lastDate` datetime DEFAULT NULL,
  `catalog` int(11) DEFAULT NULL,
  `lastMessage` varchar(255) DEFAULT NULL,
  `members` int(11) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `uid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
  -- KEY `FK1i9f2ekhf4y4xk5cqwr0unb1i` (`uid`),
  -- CONSTRAINT `FK1i9f2ekhf4y4xk5cqwr0unb1i` FOREIGN KEY (`uid`) REFERENCES `user_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_message_subject
-- ----------------------------

-- ----------------------------
-- Table structure for user_notification
-- ----------------------------
DROP TABLE IF EXISTS `user_notification`;
CREATE TABLE `user_notification` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addDate` datetime DEFAULT NULL,
  `lastDate` datetime DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `clicks` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `imageType` int(11) DEFAULT NULL,
  `introduction` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `taxonomy` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `top` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `authorid` bigint(20) DEFAULT NULL,
  `catalogid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
  -- KEY `FKen7mn6n9j4ach4hyewfjakkg2` (`authorid`),
  -- KEY `FK25yxc2g4kt2wk510uy05nr10f` (`catalogid`),
  -- CONSTRAINT `FK25yxc2g4kt2wk510uy05nr10f` FOREIGN KEY (`catalogid`) REFERENCES `user_notification_catalog` (`id`),
  -- CONSTRAINT `FKen7mn6n9j4ach4hyewfjakkg2` FOREIGN KEY (`authorid`) REFERENCES `user_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_notification
-- ----------------------------

-- ----------------------------
-- Table structure for user_notification_catalog
-- ----------------------------
DROP TABLE IF EXISTS `user_notification_catalog`;
CREATE TABLE `user_notification_catalog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addDate` datetime DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `ids` varchar(255) DEFAULT NULL,
  `lastDate` datetime DEFAULT NULL,
  `levelInfo` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `sortNum` int(11) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `system` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
  -- KEY `FKgftt45f6mnajuk0k4c8aya4ew` (`pid`),
  -- CONSTRAINT `FKgftt45f6mnajuk0k4c8aya4ew` FOREIGN KEY (`pid`) REFERENCES `user_notification_catalog` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_notification_catalog
-- ----------------------------
INSERT INTO `user_notification_catalog` VALUES ('1', '2018-01-02 11:02:20', '', '1', '2018-01-02 11:02:20', '1', '1', '根节点', '6', '0', null, null, null);
INSERT INTO `user_notification_catalog` VALUES ('2', '2018-01-02 11:02:51', '001', '1,2', '2018-01-02 11:02:51', '2', '2', '系统消息', '3', null, null, null, '1');
INSERT INTO `user_notification_catalog` VALUES ('3', '2018-01-02 11:03:03', '002', '1,3', '2018-01-02 11:03:03', '2', '4', '其他消息', '5', null, null, null, '1');

-- ----------------------------
-- Table structure for user_notification_member
-- ----------------------------
DROP TABLE IF EXISTS `user_notification_member`;
CREATE TABLE `user_notification_member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addDate` datetime DEFAULT NULL,
  `lastDate` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `notificationid` bigint(20) DEFAULT NULL,
  `uid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
  -- KEY `FKolldeppu9xw9we1jwgcvpc6m7` (`notificationid`),
  -- KEY `FKlatb6olq7rthe83lg86qovdqh` (`uid`),
  -- CONSTRAINT `FKlatb6olq7rthe83lg86qovdqh` FOREIGN KEY (`uid`) REFERENCES `user_info` (`id`),
  -- CONSTRAINT `FKolldeppu9xw9we1jwgcvpc6m7` FOREIGN KEY (`notificationid`) REFERENCES `user_notification` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5066 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_notification_member
-- ----------------------------

-- ----------------------------
-- Table structure for user_notification_num
-- ----------------------------
DROP TABLE IF EXISTS `user_notification_num`;
CREATE TABLE `user_notification_num` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addDate` datetime DEFAULT NULL,
  `lastDate` datetime DEFAULT NULL,
  `mid` bigint(20) DEFAULT NULL,
  `uid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
  -- KEY `FKmi0949b37eayfjjpvv421bmvy` (`uid`),
  -- CONSTRAINT `FKmi0949b37eayfjjpvv421bmvy` FOREIGN KEY (`uid`) REFERENCES `user_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_notification_num
-- ----------------------------
INSERT INTO `user_notification_num` VALUES ('1', '2018-01-02 15:52:12', '2018-01-09 09:23:27', '9', '1');

-- ----------------------------
-- Table structure for user_notification_time
-- ----------------------------
DROP TABLE IF EXISTS `user_notification_time`;
CREATE TABLE `user_notification_time` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addDate` datetime DEFAULT NULL,
  `lastDate` datetime DEFAULT NULL,
  `uid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
  -- KEY `FK5co2x7rgocx6fmbfptaknqxh8` (`uid`),
  -- CONSTRAINT `FK5co2x7rgocx6fmbfptaknqxh8` FOREIGN KEY (`uid`) REFERENCES `user_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_notification_time
-- ----------------------------
INSERT INTO `user_notification_time` VALUES ('2', '2018-01-02 15:31:22', '2018-02-02 15:27:43', '1');

-- ----------------------------
-- Table structure for user_oauth_config
-- ----------------------------
DROP TABLE IF EXISTS `user_oauth_config`;
CREATE TABLE `user_oauth_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addDate` datetime DEFAULT NULL,
  `lastDate` datetime DEFAULT NULL,
  `appKey` varchar(255) DEFAULT NULL,
  `appSecret` varchar(255) DEFAULT NULL,
  `className` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_oauth_config
-- ----------------------------

-- ----------------------------
-- Table structure for user_oauth_token
-- ----------------------------
DROP TABLE IF EXISTS `user_oauth_token`;
CREATE TABLE `user_oauth_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addDate` datetime DEFAULT NULL,
  `lastDate` datetime DEFAULT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `expires_in` bigint(20) DEFAULT NULL,
  `loginSize` int(11) DEFAULT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  `token_type` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `userid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
  -- KEY `FKhco9s5j1bhp44w3mpt19kmi21` (`userid`),
  -- CONSTRAINT `FKhco9s5j1bhp44w3mpt19kmi21` FOREIGN KEY (`userid`) REFERENCES `user_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_oauth_token
-- ----------------------------

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addDate` datetime DEFAULT NULL,
  `lastDate` datetime DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `roleType` int(11) DEFAULT NULL,
  `catalog_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
  -- KEY `FKrwtb6ktd4x1qi6sjjiu3134a1` (`catalog_id`),
  -- CONSTRAINT `FKrwtb6ktd4x1qi6sjjiu3134a1` FOREIGN KEY (`catalog_id`) REFERENCES `user_role_catalog` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '2018-04-30 23:01:04', '2018-04-30 23:01:04', '', '', 'admin', '0', '2');
INSERT INTO `user_role` VALUES ('2', '2018-04-30 23:04:05', '2018-04-30 23:04:05', 'observer', 'observer', 'observer', '1', '3');
INSERT INTO `user_role` VALUES ('3', '2018-04-30 23:10:13', '2018-04-30 23:10:13', '', '', '', null, '2');

-- ----------------------------
-- Table structure for user_role_authority
-- ----------------------------
DROP TABLE IF EXISTS `user_role_authority`;
CREATE TABLE `user_role_authority` (
  `role_id` bigint(20) NOT NULL,
  `permission` varchar(100) DEFAULT NULL
  -- KEY `FKo6xok4ngrsuacqkyjpqbykn9l` (`role_id`),
  -- CONSTRAINT `FKo6xok4ngrsuacqkyjpqbykn9l` FOREIGN KEY (`role_id`) REFERENCES `user_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role_authority
-- ----------------------------
INSERT INTO `user_role_authority` VALUES ('1', '19');
INSERT INTO `user_role_authority` VALUES ('1', '20');
INSERT INTO `user_role_authority` VALUES ('1', 'member');
INSERT INTO `user_role_authority` VALUES ('1', 'useraccount');
INSERT INTO `user_role_authority` VALUES ('1', 'userloginlog');
INSERT INTO `user_role_authority` VALUES ('1', '90');
INSERT INTO `user_role_authority` VALUES ('1', '2');
INSERT INTO `user_role_authority` VALUES ('1', 'menu');
INSERT INTO `user_role_authority` VALUES ('1', 'userrole');
INSERT INTO `user_role_authority` VALUES ('1', 'userrolecatalog');
INSERT INTO `user_role_authority` VALUES ('1', 'tmpl');
INSERT INTO `user_role_authority` VALUES ('2', '19');

-- ----------------------------
-- Table structure for user_role_catalog
-- ----------------------------
DROP TABLE IF EXISTS `user_role_catalog`;
CREATE TABLE `user_role_catalog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addDate` datetime DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `ids` varchar(255) DEFAULT NULL,
  `lastDate` datetime DEFAULT NULL,
  `levelInfo` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `sortNum` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
  -- KEY `FKkk8xoshxnvrtd39dd20k4vi85` (`pid`),
  -- CONSTRAINT `FKkk8xoshxnvrtd39dd20k4vi85` FOREIGN KEY (`pid`) REFERENCES `user_role_catalog` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role_catalog
-- ----------------------------
INSERT INTO `user_role_catalog` VALUES ('1', '2017-12-27 13:59:23', '', '1', '2017-12-27 13:59:23', '1', '1', '根节点', '6', '0', null);
INSERT INTO `user_role_catalog` VALUES ('2', '2017-12-27 13:59:42', '002', '1,2', '2017-12-27 13:59:42', '2', '2', '系统', '3', null, '1');
INSERT INTO `user_role_catalog` VALUES ('3', '2017-12-27 13:59:49', '001', '1,3', '2017-12-27 13:59:49', '2', '4', '自定义', '5', null, '1');

-- ----------------------------
-- Table structure for user_role_links
-- ----------------------------
DROP TABLE IF EXISTS `user_role_links`;
CREATE TABLE `user_role_links` (
  `user_id` bigint(20) NOT NULL,
  `roles_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`roles_id`)
  -- KEY `FKpm1oweb01msxxqf212qmd0984` (`roles_id`),
  -- CONSTRAINT `FK3r2sf8531lbjt40y3qjhkg2an` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`id`),
  -- CONSTRAINT `FKpm1oweb01msxxqf212qmd0984` FOREIGN KEY (`roles_id`) REFERENCES `user_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role_links
-- ----------------------------
INSERT INTO `user_role_links` VALUES ('1', '1');
INSERT INTO `user_role_links` VALUES ('1221', '1');
INSERT INTO `user_role_links` VALUES ('1222', '1');
INSERT INTO `user_role_links` VALUES ('1222', '2');
INSERT INTO `user_role_links` VALUES ('1223', '2');

-- ----------------------------
-- Table structure for user_verification
-- ----------------------------
DROP TABLE IF EXISTS `user_verification`;
CREATE TABLE `user_verification` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addDate` datetime DEFAULT NULL,
  `lastDate` datetime DEFAULT NULL,
  `catalog` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_verification
-- ----------------------------
