/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : adminstore

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-05-04 22:34:41
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
  PRIMARY KEY (`id`),
  KEY `FKtn7all8h9e6fi9pspra60rht5` (`pid`),
  CONSTRAINT `FKtn7all8h9e6fi9pspra60rht5` FOREIGN KEY (`pid`) REFERENCES `area` (`id`)
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
  PRIMARY KEY (`id`),
  KEY `FKqcf9gem97gqa5qjm4d3elcqt5` (`pid`),
  CONSTRAINT `FKqcf9gem97gqa5qjm4d3elcqt5` FOREIGN KEY (`pid`) REFERENCES `menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '2017-09-25 14:25:39', '', '1', '2017-09-25 14:25:39', '1', '1', '根节点', '68', '0', null, null, null, null, null, null);
INSERT INTO `menu` VALUES ('2', '2017-11-09 14:19:34', null, '1,2', '2017-11-09 14:19:34', '2', '2', '系统设置', '21', '55', '0', 'fa  fa-gear', '0', '', '2', '1');
INSERT INTO `menu` VALUES ('3', '2018-05-03 16:10:18', null, '1,2,3', '2018-05-03 16:10:18', '3', '3', '菜单权限管理', '4', '0', '0', 'fa  fa-reorder', '0', 'admin/menu/view_list.htm', 'menu', '2');
INSERT INTO `menu` VALUES ('4', '2017-09-25 14:36:59', null, '1,2,4', '2017-09-25 14:36:59', '3', '5', '角色管理', '6', '0', '0', 'fa  fa-tree', '0', 'admin/userrole/view_list.htm', 'userrole', '2');
INSERT INTO `menu` VALUES ('19', '2017-12-27 14:04:52', null, '1,19', '2017-12-27 14:04:52', '2', '38', '控制台', '39', '0', '0', 'fa fa-home', '0', 'admin/index.htm', '19', '1');
INSERT INTO `menu` VALUES ('20', '2017-12-27 14:19:54', null, '1,20', '2017-12-27 14:19:54', '2', '40', '用户管理', '51', '0', '0', 'fa  fa-users', '0', '', '20', '1');
INSERT INTO `menu` VALUES ('21', '2018-05-03 14:30:29', null, '1,20,21', '2018-05-03 14:30:29', '3', '41', '用户信息', '46', '0', '0', 'fa fa-user', '0', 'admin/member/view_list.htm', 'member', '20');
INSERT INTO `menu` VALUES ('22', '2017-12-27 14:20:51', null, '1,20,22', '2017-12-27 14:20:51', '3', '47', '账号管理', '48', '0', '0', 'fa fa-list', '0', 'admin/useraccount/view_list.htm', 'useraccount', '20');
INSERT INTO `menu` VALUES ('23', '2017-12-27 15:05:28', null, '1,20,23', '2017-12-27 15:05:28', '3', '49', '登陆日志', '50', '0', '0', 'fa fa-support', '0', 'admin/userloginlog/view_list.htm', 'userloginlog', '20');
INSERT INTO `menu` VALUES ('34', '2018-05-03 16:39:31', null, '1,20,21,34', '2018-05-03 16:39:31', '4', '42', '用户更新权限', '43', '1', '1', 'fa fa-circle-o', '0', 'admin/member/view_edit', 'member/update', '21');
INSERT INTO `menu` VALUES ('35', '2018-05-03 16:39:40', null, '1,20,21,35', '2018-05-03 16:39:40', '4', '44', '用户删除权限', '45', '2', '1', 'fa fa-circle-o', '0', 'admin/member/model_delete', 'member/delete', '21');

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
  PRIMARY KEY (`PluginConfig_id`,`name`),
  CONSTRAINT `FK9s4k66fykxc5x1oo58bg0ku82` FOREIGN KEY (`PluginConfig_id`) REFERENCES `plugin_config` (`id`)
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
  PRIMARY KEY (`id`),
  KEY `FK9rgjxw6r5h7gf0e7ijfbademt` (`app_id`),
  CONSTRAINT `FK9rgjxw6r5h7gf0e7ijfbademt` FOREIGN KEY (`app_id`) REFERENCES `site_app` (`id`)
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
  PRIMARY KEY (`id`),
  KEY `FK1316ht5o7bmu4jbixoso45paa` (`linkType_id`),
  CONSTRAINT `FK1316ht5o7bmu4jbixoso45paa` FOREIGN KEY (`linkType_id`) REFERENCES `site_link_type` (`id`)
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
  PRIMARY KEY (`id`),
  KEY `FKsve8aryqrci3acgot8k7rt6ix` (`pid`),
  CONSTRAINT `FKsve8aryqrci3acgot8k7rt6ix` FOREIGN KEY (`pid`) REFERENCES `site_link_type` (`id`)
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
  PRIMARY KEY (`id`),
  KEY `FKqpj60iiafuf9b7dh5xtxoeusw` (`user_id`),
  CONSTRAINT `FKqpj60iiafuf9b7dh5xtxoeusw` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`id`)
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
  `name` varchar(36) NOT NULL,
  KEY `FKkkpewueys70bcx84x9yd2dsec` (`task_id`),
  CONSTRAINT `FKkkpewueys70bcx84x9yd2dsec` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`)
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
  PRIMARY KEY (`id`),
  KEY `FKhcsb7k9mkjpq63wpmfopg0tty` (`task_id`),
  CONSTRAINT `FKhcsb7k9mkjpq63wpmfopg0tty` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`)
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
  PRIMARY KEY (`id`),
  KEY `FKloyhlvrn82g8811wyjaa8ehm0` (`user_id`),
  CONSTRAINT `FKloyhlvrn82g8811wyjaa8ehm0` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_account
-- ----------------------------
INSERT INTO `user_account` VALUES ('1', '2017-12-27 13:53:50', '2018-05-04 22:25:00', '2', '265', 'b63e05a75d3c13c53becedeb885bda5b67a6664a', 'e1e8c5fab5a28e13', 'admin', '1');
INSERT INTO `user_account` VALUES ('5', '2018-04-30 22:44:36', '2018-05-04 22:33:45', '2', '7', '6332ed647d0bb14d3bb3d23437d4520a7e4ca0cf', '4374b54ad7a254dc', 'xuchao', '1221');
INSERT INTO `user_account` VALUES ('6', '2018-04-30 22:45:37', '2018-05-04 22:33:56', '2', '24', 'e6803d9350fa38ba77edc9384e97f33a1dee1d73', 'f456ecc7e1013223', 'xufu', '1222');

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
  PRIMARY KEY (`id`),
  KEY `FKfulmxb2y8nrres564ymc2kqr4` (`userid`)
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
  PRIMARY KEY (`id`),
  KEY `FKfjxq06hj1obi36glqqlbimt4g` (`userid`),
  CONSTRAINT `FKfjxq06hj1obi36glqqlbimt4g` FOREIGN KEY (`userid`) REFERENCES `user_info` (`id`)
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
  `introduce` varchar(4096) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `household_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3193uu2asgocbhkk1mus5wfd7` (`household_id`),
  CONSTRAINT `FK3193uu2asgocbhkk1mus5wfd7` FOREIGN KEY (`household_id`) REFERENCES `area` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1223 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', '2017-12-27 14:44:05', '2018-05-04 22:25:00', 'dist/img/ba0a8179-9966-4ae5-8f68-8b4c7f2e1618_smaller.jpg', '0', '309', 'admin', null, '账号', null, null, '[{\"postDate\":\"2018-05-02\",\"fileDir\":\"dist/paper/89c4f4c9-9cc8-437c-9ece-9c0fb87d4a60徐甫-前端开发-校招简历.pdf\",\"title\":\"网络爬虫研究\",\"author\":\"cash xu\",\"summary\":\"网络爬虫（又被称为网页蜘蛛，网络机器人，在FOAF社区中间，更经常的称为网页追逐者），是一种按照一定的规则，自动地抓取万维网信息的程序或者脚本。另外一些不常使用的名字还有蚂蚁、自动索引、模拟程序或者蠕虫。\"}]', null, '男', null);
INSERT INTO `user_info` VALUES ('1221', '2018-04-30 22:44:36', '2018-05-04 22:33:45', 'dist/img/e190e5b7-71b0-4e7f-baf2-ca09696cbe6a_smaller.jpg', '0', '6', 'xuchao', null, '账号', null, null, '[{\"postDate\":\"2018-05-31\",\"fileDir\":\"dist/paper/4c6bdac4-b599-4823-bd87-109d890c471d拍拍贷VPN登陆使用指南v3.pdf\",\"title\":\"大数据架构师之路-大数据解决方案\",\"author\":\"李楠 王安石\",\"summary\":\"随着乐视硬件抢购的不断升级，乐视集团支付面临的请求压力百倍乃至千倍的暴增。作为商品购买的最后一环，保证用户快速稳定的完成支付尤为重要。所以在15年11月，我们对整个支付系统进行了全面的架构升级，使之具备了每秒稳定处理10万订单的能力。为乐视生态各种形式的抢购秒杀活动提供了强有力的支撑。\"}]', null, '男', null);
INSERT INTO `user_info` VALUES ('1222', '2018-05-03 16:00:23', '2018-05-04 22:33:56', 'dist/img/7a938134-e440-4f30-98c4-bc93e2d79c1a_smaller.jpg', '0', '20', 'xufu2', null, '账号', null, null, '[{\"postDate\":\"2018-05-02\",\"fileDir\":\"dist/paper/979782c1-5f1f-48ee-904b-bf10655b7918拍拍贷VPN登陆使用指南v3.pdf\",\"title\":\"大白话讲解遗传算法\",\"author\":\"赵二狗\",\"summary\":\"遗传算法（Genetic Algorithm）是模拟达尔文生物进化论的自然选择和遗传学机理的生物进化过程的计算模型，是一种通过模拟自然进化过程搜索最优解的方法。遗传算法是从代表问题可能潜在的解集的一个种群（population）开始的，而一个种群则由经过基因（gene）编码的一定数目的个体(individual)组成。每个个体实际上是染色体(chromosome)带有特征的实体。染色体作为遗传物质的主要载体，即多个基因的集合，其内部表现（即基因型）是某种基因组合，它决定了个体的形状的外部表现，如黑头发的特征是由染色体中控制这一特征的某种基因组合决定的。\"},{\"postDate\":\"2018-02-22\",\"fileDir\":\"dist/paper/1036a6b1-d386-45ec-aa7d-ad1e4dacc446徐甫-前端开发-校招简历.pdf\",\"title\":\"神经网络浅讲:从神经元到深度学习\",\"author\":\"赵日天\",\"summary\":\"人工神经网络（Artificial Neural Network，即ANN ），是20世纪80 年代以来人工智能领域兴起的研究热点。它从信息处理角度对人脑神经元网络进行抽象， 建立某种简单模型，按不同的连接方式组成不同的网络。在工程与学术界也常直接简称为神经网络或类神经网络。神经网络是一种运算模型，由大量的节点（或称神经元）之间相互联接构成。每个节点代表一种特定的输出函数，称为激励函数（activation function）\"},{\"postDate\":\"2018-01-16\",\"fileDir\":\"dist/paper/dbf2fedb-084f-42c8-b87e-cd671472f969徐甫-前端开发-校招简历.pdf\",\"title\":\"深度学习可行性研究\",\"author\":\"李夏三\",\"summary\":\"深度学习的概念源于人工神经网络的研究。含多隐层的多层感知器就是一种深度学习结构。深度学习通过组合低层特征形成更加抽象的高层表示属性类别或特征，以发现数据的分布式特征表示。 [1] \\n深度学习的概念由Hinton等人于2006年提出。基于深度置信网络(DBN)提出非监督贪心逐层训练算法，为解决深层结构相关的优化难题带来希望，随后提出多层自动编码器深层结构。此外Lecun等人提出的卷积神经网络是第一个真正多层结构学习算法，它利用空间相对关系减少参数数目以提高训练性能。\"}]', null, '男', null);

-- ----------------------------
-- Table structure for user_info_attribute
-- ----------------------------
DROP TABLE IF EXISTS `user_info_attribute`;
CREATE TABLE `user_info_attribute` (
  `user_id` bigint(20) NOT NULL,
  `attr` varchar(100) DEFAULT NULL,
  `name` varchar(36) NOT NULL,
  PRIMARY KEY (`user_id`,`name`),
  CONSTRAINT `FKjf8g1vng9lpmniy8u187j7t0` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info_attribute
-- ----------------------------
INSERT INTO `user_info_attribute` VALUES ('1', '复旦大学 经济管理', 'education');
INSERT INTO `user_info_attribute` VALUES ('1', 'admin@admin.com', 'email');
INSERT INTO `user_info_attribute` VALUES ('1', '管理员', 'intro');
INSERT INTO `user_info_attribute` VALUES ('1', '江苏 南京', 'location');
INSERT INTO `user_info_attribute` VALUES ('1', 'JAVA,PYTHON,SQL', 'tag');
INSERT INTO `user_info_attribute` VALUES ('1221', '清华大学phd', 'education');
INSERT INTO `user_info_attribute` VALUES ('1221', 'chao@qq.com', 'email');
INSERT INTO `user_info_attribute` VALUES ('1221', '骑士总冠军', 'intro');
INSERT INTO `user_info_attribute` VALUES ('1221', '上海 浦东', 'location');
INSERT INTO `user_info_attribute` VALUES ('1221', 'Coding,PHP,Nodejs', 'tag');
INSERT INTO `user_info_attribute` VALUES ('1222', '北京大学中文系  phd', 'education');
INSERT INTO `user_info_attribute` VALUES ('1222', 'asdfidalsdafadsfl@qq.com', 'email');
INSERT INTO `user_info_attribute` VALUES ('1222', '深度学习的概念源于人工神经网络的研究\r\n北京大学中文系 phd', 'intro');
INSERT INTO `user_info_attribute` VALUES ('1222', '北京 海淀', 'location');
INSERT INTO `user_info_attribute` VALUES ('1222', 'Coding,PHP,Nodejs,ios', 'tag');

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
  PRIMARY KEY (`user_id`,`labels_id`),
  KEY `FKe69vxi1aiq7ww12d8pf03hrn1` (`labels_id`),
  CONSTRAINT `FK5njpwjktgb87ggnjm63vejdwc` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`id`),
  CONSTRAINT `FKe69vxi1aiq7ww12d8pf03hrn1` FOREIGN KEY (`labels_id`) REFERENCES `user_label` (`id`)
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
  PRIMARY KEY (`id`),
  KEY `FKj91w0nnfocpdp796lr3ot4lxs` (`user_id`),
  CONSTRAINT `FKj91w0nnfocpdp796lr3ot4lxs` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

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
INSERT INTO `user_login_log` VALUES ('32', '2018-04-30 23:06:34', '2018-04-30 23:06:34', '127.0.0.1', '1', '1222', null, null);
INSERT INTO `user_login_log` VALUES ('33', '2018-04-30 23:09:43', '2018-04-30 23:09:43', '127.0.0.1', '1', '1222', null, null);
INSERT INTO `user_login_log` VALUES ('34', '2018-05-03 13:46:03', '2018-05-03 13:46:03', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('35', '2018-05-03 14:14:18', '2018-05-03 14:14:18', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('36', '2018-05-03 14:14:48', '2018-05-03 14:14:48', '127.0.0.1', '1', '1221', null, null);
INSERT INTO `user_login_log` VALUES ('37', '2018-05-03 14:27:06', '2018-05-03 14:27:06', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('38', '2018-05-03 15:01:52', '2018-05-03 15:01:52', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('39', '2018-05-03 15:40:21', '2018-05-03 15:40:21', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('40', '2018-05-03 15:45:16', '2018-05-03 15:45:16', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('41', '2018-05-03 15:50:48', '2018-05-03 15:50:48', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('42', '2018-05-03 15:58:00', '2018-05-03 15:58:00', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('43', '2018-05-03 15:59:47', '2018-05-03 15:59:47', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('44', '2018-05-03 16:02:56', '2018-05-03 16:02:56', '127.0.0.1', '1', '1222', null, null);
INSERT INTO `user_login_log` VALUES ('45', '2018-05-03 16:03:48', '2018-05-03 16:03:48', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('46', '2018-05-03 16:09:58', '2018-05-03 16:09:58', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('47', '2018-05-03 16:17:15', '2018-05-03 16:17:15', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('48', '2018-05-03 16:17:34', '2018-05-03 16:17:34', '127.0.0.1', '1', '1222', null, null);
INSERT INTO `user_login_log` VALUES ('49', '2018-05-03 16:23:02', '2018-05-03 16:23:02', '127.0.0.1', '1', '1222', null, null);
INSERT INTO `user_login_log` VALUES ('50', '2018-05-03 16:27:22', '2018-05-03 16:27:22', '127.0.0.1', '1', '1222', null, null);
INSERT INTO `user_login_log` VALUES ('51', '2018-05-03 16:33:07', '2018-05-03 16:33:07', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('52', '2018-05-03 16:33:45', '2018-05-03 16:33:45', '127.0.0.1', '1', '1222', null, null);
INSERT INTO `user_login_log` VALUES ('53', '2018-05-03 16:37:40', '2018-05-03 16:37:40', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('54', '2018-05-03 16:38:36', '2018-05-03 16:38:36', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('55', '2018-05-03 16:40:33', '2018-05-03 16:40:33', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('56', '2018-05-03 16:42:12', '2018-05-03 16:42:12', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('57', '2018-05-03 16:42:26', '2018-05-03 16:42:26', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('58', '2018-05-03 16:42:59', '2018-05-03 16:42:59', '127.0.0.1', '1', '1222', null, null);
INSERT INTO `user_login_log` VALUES ('61', '2018-05-03 17:10:18', '2018-05-03 17:10:18', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('62', '2018-05-03 17:14:12', '2018-05-03 17:14:12', '127.0.0.1', '1', '1222', null, null);
INSERT INTO `user_login_log` VALUES ('63', '2018-05-03 17:41:58', '2018-05-03 17:41:58', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('64', '2018-05-03 17:45:21', '2018-05-03 17:45:21', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('65', '2018-05-04 09:50:08', '2018-05-04 09:50:08', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('66', '2018-05-04 11:18:41', '2018-05-04 11:18:41', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('67', '2018-05-04 11:20:46', '2018-05-04 11:20:46', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('68', '2018-05-04 11:57:13', '2018-05-04 11:57:13', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('69', '2018-05-04 12:02:30', '2018-05-04 12:02:30', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('70', '2018-05-04 12:07:20', '2018-05-04 12:07:20', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('71', '2018-05-04 12:17:05', '2018-05-04 12:17:05', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('72', '2018-05-04 12:19:07', '2018-05-04 12:19:07', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('73', '2018-05-04 12:23:52', '2018-05-04 12:23:52', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('74', '2018-05-04 12:46:02', '2018-05-04 12:46:02', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('75', '2018-05-04 12:48:29', '2018-05-04 12:48:29', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('76', '2018-05-04 12:49:57', '2018-05-04 12:49:57', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('77', '2018-05-04 12:56:32', '2018-05-04 12:56:32', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('78', '2018-05-04 13:48:41', '2018-05-04 13:48:41', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('79', '2018-05-04 13:56:36', '2018-05-04 13:56:36', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('80', '2018-05-04 13:58:19', '2018-05-04 13:58:19', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('81', '2018-05-04 14:16:27', '2018-05-04 14:16:27', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('82', '2018-05-04 14:32:17', '2018-05-04 14:32:17', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('83', '2018-05-04 14:35:50', '2018-05-04 14:35:50', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('84', '2018-05-04 14:39:26', '2018-05-04 14:39:26', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('85', '2018-05-04 15:21:18', '2018-05-04 15:21:18', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('86', '2018-05-04 15:24:06', '2018-05-04 15:24:06', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('87', '2018-05-04 15:25:21', '2018-05-04 15:25:21', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('88', '2018-05-04 15:26:42', '2018-05-04 15:26:42', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('89', '2018-05-04 15:34:30', '2018-05-04 15:34:30', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('90', '2018-05-04 15:46:58', '2018-05-04 15:46:58', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('91', '2018-05-04 15:58:04', '2018-05-04 15:58:04', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('92', '2018-05-04 16:07:44', '2018-05-04 16:07:44', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('93', '2018-05-04 16:39:59', '2018-05-04 16:39:59', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('94', '2018-05-04 16:42:33', '2018-05-04 16:42:33', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('95', '2018-05-04 16:48:46', '2018-05-04 16:48:46', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('96', '2018-05-04 17:02:53', '2018-05-04 17:02:53', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('97', '2018-05-04 17:30:47', '2018-05-04 17:30:47', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('98', '2018-05-04 17:34:45', '2018-05-04 17:34:45', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('99', '2018-05-04 17:38:58', '2018-05-04 17:38:58', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('100', '2018-05-04 17:51:47', '2018-05-04 17:51:47', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('101', '2018-05-04 18:12:43', '2018-05-04 18:12:43', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('102', '2018-05-04 18:36:29', '2018-05-04 18:36:29', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('103', '2018-05-04 18:42:39', '2018-05-04 18:42:39', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('104', '2018-05-04 19:00:27', '2018-05-04 19:00:27', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('105', '2018-05-04 19:38:08', '2018-05-04 19:38:08', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('106', '2018-05-04 19:45:06', '2018-05-04 19:45:06', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('107', '2018-05-04 19:47:10', '2018-05-04 19:47:10', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('108', '2018-05-04 19:50:28', '2018-05-04 19:50:28', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('109', '2018-05-04 19:51:38', '2018-05-04 19:51:38', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('110', '2018-05-04 19:53:33', '2018-05-04 19:53:33', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('111', '2018-05-04 20:53:15', '2018-05-04 20:53:15', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('112', '2018-05-04 21:11:04', '2018-05-04 21:11:04', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('113', '2018-05-04 21:28:05', '2018-05-04 21:28:05', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('114', '2018-05-04 21:30:44', '2018-05-04 21:30:44', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('115', '2018-05-04 21:41:03', '2018-05-04 21:41:03', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('116', '2018-05-04 21:44:12', '2018-05-04 21:44:12', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('117', '2018-05-04 21:50:01', '2018-05-04 21:50:01', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('118', '2018-05-04 21:52:59', '2018-05-04 21:52:59', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('119', '2018-05-04 22:02:27', '2018-05-04 22:02:27', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('120', '2018-05-04 22:08:00', '2018-05-04 22:08:00', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('121', '2018-05-04 22:21:19', '2018-05-04 22:21:19', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('122', '2018-05-04 22:22:12', '2018-05-04 22:22:12', '127.0.0.1', '1', '1', null, null);
INSERT INTO `user_login_log` VALUES ('123', '2018-05-04 22:25:20', '2018-05-04 22:25:20', '127.0.0.1', '1', '1222', null, null);
INSERT INTO `user_login_log` VALUES ('124', '2018-05-04 22:33:45', '2018-05-04 22:33:45', '127.0.0.1', '1', '1221', null, null);
INSERT INTO `user_login_log` VALUES ('125', '2018-05-04 22:33:56', '2018-05-04 22:33:56', '127.0.0.1', '1', '1222', null, null);

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
  PRIMARY KEY (`id`),
  KEY `FKprww0bw44m48y4xxbkv13u5g7` (`subject_id`),
  KEY `FKcu2q6axhu3g31g1vbuosec525` (`user_id`),
  CONSTRAINT `FKcu2q6axhu3g31g1vbuosec525` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`id`),
  CONSTRAINT `FKprww0bw44m48y4xxbkv13u5g7` FOREIGN KEY (`subject_id`) REFERENCES `user_message_subject` (`id`)
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
  PRIMARY KEY (`id`),
  KEY `FKq810ie1390jw6r2umbsvtpusf` (`subjectid`),
  KEY `FK2lven49o6lj1fnlb47lwjs9g9` (`uid`),
  CONSTRAINT `FK2lven49o6lj1fnlb47lwjs9g9` FOREIGN KEY (`uid`) REFERENCES `user_info` (`id`),
  CONSTRAINT `FKq810ie1390jw6r2umbsvtpusf` FOREIGN KEY (`subjectid`) REFERENCES `user_message_subject` (`id`)
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
  PRIMARY KEY (`id`),
  KEY `FK1i9f2ekhf4y4xk5cqwr0unb1i` (`uid`),
  CONSTRAINT `FK1i9f2ekhf4y4xk5cqwr0unb1i` FOREIGN KEY (`uid`) REFERENCES `user_info` (`id`)
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
  PRIMARY KEY (`id`),
  KEY `FKen7mn6n9j4ach4hyewfjakkg2` (`authorid`),
  KEY `FK25yxc2g4kt2wk510uy05nr10f` (`catalogid`),
  CONSTRAINT `FK25yxc2g4kt2wk510uy05nr10f` FOREIGN KEY (`catalogid`) REFERENCES `user_notification_catalog` (`id`),
  CONSTRAINT `FKen7mn6n9j4ach4hyewfjakkg2` FOREIGN KEY (`authorid`) REFERENCES `user_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  PRIMARY KEY (`id`),
  KEY `FKgftt45f6mnajuk0k4c8aya4ew` (`pid`),
  CONSTRAINT `FKgftt45f6mnajuk0k4c8aya4ew` FOREIGN KEY (`pid`) REFERENCES `user_notification_catalog` (`id`)
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
  PRIMARY KEY (`id`),
  KEY `FKolldeppu9xw9we1jwgcvpc6m7` (`notificationid`),
  KEY `FKlatb6olq7rthe83lg86qovdqh` (`uid`),
  CONSTRAINT `FKlatb6olq7rthe83lg86qovdqh` FOREIGN KEY (`uid`) REFERENCES `user_info` (`id`),
  CONSTRAINT `FKolldeppu9xw9we1jwgcvpc6m7` FOREIGN KEY (`notificationid`) REFERENCES `user_notification` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  PRIMARY KEY (`id`),
  KEY `FKmi0949b37eayfjjpvv421bmvy` (`uid`),
  CONSTRAINT `FKmi0949b37eayfjjpvv421bmvy` FOREIGN KEY (`uid`) REFERENCES `user_info` (`id`)
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
  PRIMARY KEY (`id`),
  KEY `FK5co2x7rgocx6fmbfptaknqxh8` (`uid`),
  CONSTRAINT `FK5co2x7rgocx6fmbfptaknqxh8` FOREIGN KEY (`uid`) REFERENCES `user_info` (`id`)
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
  PRIMARY KEY (`id`),
  KEY `FKhco9s5j1bhp44w3mpt19kmi21` (`userid`),
  CONSTRAINT `FKhco9s5j1bhp44w3mpt19kmi21` FOREIGN KEY (`userid`) REFERENCES `user_info` (`id`)
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
  PRIMARY KEY (`id`),
  KEY `FKrwtb6ktd4x1qi6sjjiu3134a1` (`catalog_id`),
  CONSTRAINT `FKrwtb6ktd4x1qi6sjjiu3134a1` FOREIGN KEY (`catalog_id`) REFERENCES `user_role_catalog` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '2018-05-03 16:41:37', '2018-05-03 16:41:37', 'admin', '管理员', 'admin', '0', '2');
INSERT INTO `user_role` VALUES ('2', '2018-05-04 14:55:09', '2018-05-04 14:55:09', 'observer', '观察者', 'observer', '1', '3');

-- ----------------------------
-- Table structure for user_role_authority
-- ----------------------------
DROP TABLE IF EXISTS `user_role_authority`;
CREATE TABLE `user_role_authority` (
  `role_id` bigint(20) NOT NULL,
  `permission` varchar(100) DEFAULT NULL,
  KEY `FKo6xok4ngrsuacqkyjpqbykn9l` (`role_id`),
  CONSTRAINT `FKo6xok4ngrsuacqkyjpqbykn9l` FOREIGN KEY (`role_id`) REFERENCES `user_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role_authority
-- ----------------------------
INSERT INTO `user_role_authority` VALUES ('1', '19');
INSERT INTO `user_role_authority` VALUES ('1', '20');
INSERT INTO `user_role_authority` VALUES ('1', 'member');
INSERT INTO `user_role_authority` VALUES ('1', 'member/update');
INSERT INTO `user_role_authority` VALUES ('1', 'member/delete');
INSERT INTO `user_role_authority` VALUES ('1', 'useraccount');
INSERT INTO `user_role_authority` VALUES ('1', 'userloginlog');
INSERT INTO `user_role_authority` VALUES ('1', '2');
INSERT INTO `user_role_authority` VALUES ('1', 'menu');
INSERT INTO `user_role_authority` VALUES ('1', 'userrole');
INSERT INTO `user_role_authority` VALUES ('2', '19');
INSERT INTO `user_role_authority` VALUES ('2', '20');
INSERT INTO `user_role_authority` VALUES ('2', 'member');

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
  PRIMARY KEY (`id`),
  KEY `FKkk8xoshxnvrtd39dd20k4vi85` (`pid`),
  CONSTRAINT `FKkk8xoshxnvrtd39dd20k4vi85` FOREIGN KEY (`pid`) REFERENCES `user_role_catalog` (`id`)
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
  PRIMARY KEY (`user_id`,`roles_id`),
  KEY `FKpm1oweb01msxxqf212qmd0984` (`roles_id`),
  CONSTRAINT `FK3r2sf8531lbjt40y3qjhkg2an` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`id`),
  CONSTRAINT `FKpm1oweb01msxxqf212qmd0984` FOREIGN KEY (`roles_id`) REFERENCES `user_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role_links
-- ----------------------------
INSERT INTO `user_role_links` VALUES ('1', '1');
INSERT INTO `user_role_links` VALUES ('1221', '1');
INSERT INTO `user_role_links` VALUES ('1222', '2');

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
