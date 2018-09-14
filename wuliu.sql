/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : wuliu

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-09-14 23:42:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for car_message
-- ----------------------------
DROP TABLE IF EXISTS `car_message`;
CREATE TABLE `car_message` (
  `code` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `carload` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `driver_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `driver_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `issue_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `licence_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licence_style` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transpotStyle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_man` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `style` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trade_mark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of car_message
-- ----------------------------
INSERT INTO `car_message` VALUES ('1', '邹桔林', '10', '大众', '1', '2018-07-04 13:50:52', '车牌号码2', 'C', '短途', '邹桔林', '15123045', '没有dd', 'C', '5555', '2', '2');
INSERT INTO `car_message` VALUES ('2', null, null, null, null, '2018-07-06 19:47:54', null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `issue_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pow` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `result` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('8', '2', '2', '2', '2018-07-06 20:36:56', '2', '1', '2', '2', 'woman');
INSERT INTO `customer` VALUES ('5', '1', '1', '2', '2018-07-06 20:42:52', '1', '2', '1', '1', 'man');
INSERT INTO `customer` VALUES ('9', '3', '3', '3', '2018-07-06 20:37:06', '3', '1', '3', '3', 'man');

-- ----------------------------
-- Table structure for enterprise
-- ----------------------------
DROP TABLE IF EXISTS `enterprise`;
CREATE TABLE `enterprise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enterprise_name` varchar(255) DEFAULT NULL,
  `enterprise_sort` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `hand_set` varchar(255) DEFAULT NULL,
  `http` varchar(255) DEFAULT NULL,
  `intro` varchar(255) DEFAULT NULL,
  `link_man` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `work_area` varchar(255) DEFAULT NULL,
  `issue_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of enterprise
-- ----------------------------
INSERT INTO `enterprise` VALUES ('1', '11', '11', '1', '企业类型1', '11', '1', '11', '1', '1', '11', '1', '1', '1', '2018-07-06 19:09:36');

-- ----------------------------
-- Table structure for girl
-- ----------------------------
DROP TABLE IF EXISTS `girl`;
CREATE TABLE `girl` (
  `id` int(11) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `cup_size` varchar(255) NOT NULL,
  `money` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of girl
-- ----------------------------

-- ----------------------------
-- Table structure for goods_meg
-- ----------------------------
DROP TABLE IF EXISTS `goods_meg`;
CREATE TABLE `goods_meg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `end_city` varchar(255) DEFAULT NULL,
  `end_province` varchar(255) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_number` varchar(255) DEFAULT NULL,
  `goods_style` varchar(255) DEFAULT NULL,
  `goods_unit` varchar(255) DEFAULT NULL,
  `issue_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `link` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `request` varchar(255) DEFAULT NULL,
  `start_city` varchar(255) DEFAULT NULL,
  `start_province` varchar(255) DEFAULT NULL,
  `style` varchar(255) DEFAULT NULL,
  `transport_time` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_meg
-- ----------------------------
INSERT INTO `goods_meg` VALUES ('1', '1', null, null, null, null, null, '2018-07-06 19:47:01', null, null, null, null, null, null, null, null, null);
INSERT INTO `goods_meg` VALUES ('2', '2', null, null, null, null, null, '2018-07-06 19:47:37', null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES ('1');
INSERT INTO `hibernate_sequence` VALUES ('1');
INSERT INTO `hibernate_sequence` VALUES ('1');

-- ----------------------------
-- Table structure for knowledge
-- ----------------------------
DROP TABLE IF EXISTS `knowledge`;
CREATE TABLE `knowledge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `issue_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowledge
-- ----------------------------
INSERT INTO `knowledge` VALUES ('3', '321', '321', null, '231');
INSERT INTO `knowledge` VALUES ('4', null, null, null, null);
INSERT INTO `knowledge` VALUES ('5', null, null, null, null);
INSERT INTO `knowledge` VALUES ('6', null, null, null, null);
INSERT INTO `knowledge` VALUES ('7', null, null, null, null);
INSERT INTO `knowledge` VALUES ('8', null, null, null, null);

-- ----------------------------
-- Table structure for logistics
-- ----------------------------
DROP TABLE IF EXISTS `logistics`;
CREATE TABLE `logistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `issue_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logistics
-- ----------------------------
INSERT INTO `logistics` VALUES ('1', '1', '1', '2018-07-03 11:07:49', '1');
INSERT INTO `logistics` VALUES ('7', '作者', '内容', '2018-07-06 19:08:38', '标题');
INSERT INTO `logistics` VALUES ('3', null, '   da', null, '321232112');
INSERT INTO `logistics` VALUES ('4', '2', '1', null, '1');
INSERT INTO `logistics` VALUES ('5', '2', '1', null, '1');

-- ----------------------------
-- Table structure for myblog
-- ----------------------------
DROP TABLE IF EXISTS `myblog`;
CREATE TABLE `myblog` (
  `id` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myblog
-- ----------------------------

-- ----------------------------
-- Table structure for placard
-- ----------------------------
DROP TABLE IF EXISTS `placard`;
CREATE TABLE `placard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `issue_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of placard
-- ----------------------------
INSERT INTO `placard` VALUES ('4', '111发布人1', '         111文本1', '111标题1', '2018-08-27 10:22:52');
INSERT INTO `placard` VALUES ('5', '11', '11', '222', '2018-08-27 10:22:52');
