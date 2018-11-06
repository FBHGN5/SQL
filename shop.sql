/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-10-12 12:01:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for car_message
-- ----------------------------
DROP TABLE IF EXISTS `car_message`;
CREATE TABLE `car_message` (
  `code` int(11) NOT NULL,
  `brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `carload` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `driver_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `driver_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `issue_date` datetime DEFAULT NULL,
  `licence_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licence_style` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_man` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `style` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trade_mark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of car_message
-- ----------------------------

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `issue_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pow` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `result` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of customer
-- ----------------------------

-- ----------------------------
-- Table structure for enterprise
-- ----------------------------
DROP TABLE IF EXISTS `enterprise`;
CREATE TABLE `enterprise` (
  `id` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enterprise_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enterprise_sort` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hand_set` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `http` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `issue_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_man` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `operation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `word_area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of enterprise
-- ----------------------------

-- ----------------------------
-- Table structure for girl
-- ----------------------------
DROP TABLE IF EXISTS `girl`;
CREATE TABLE `girl` (
  `id` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cup_size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `money` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of girl
-- ----------------------------
INSERT INTO `girl` VALUES ('1', '1', '1', '', '0');
INSERT INTO `girl` VALUES ('2', '2', '2', '', '0');
INSERT INTO `girl` VALUES ('3', '11', 'F', '', '0');
INSERT INTO `girl` VALUES ('4', '11', 'F', '', '0');
INSERT INTO `girl` VALUES ('5', '11', 'F', '', '0');
INSERT INTO `girl` VALUES ('6', '11', 'F', '', '0');
INSERT INTO `girl` VALUES ('7', '11', 'F', '', '0');
INSERT INTO `girl` VALUES ('8', '11', 'F', '', '0');
INSERT INTO `girl` VALUES ('9', '11', 'F', '', '0');
INSERT INTO `girl` VALUES ('10', '11', 'F', '', '0');

-- ----------------------------
-- Table structure for goods_meg
-- ----------------------------
DROP TABLE IF EXISTS `goods_meg`;
CREATE TABLE `goods_meg` (
  `id` int(11) NOT NULL,
  `end_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_province` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `goods_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `goods_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `goods_style` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `goods_unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `issue_date` datetime DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `request` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_province` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `style` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transport_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of goods_meg
-- ----------------------------

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES ('11');

-- ----------------------------
-- Table structure for knowledge
-- ----------------------------
DROP TABLE IF EXISTS `knowledge`;
CREATE TABLE `knowledge` (
  `id` int(11) NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `issue_date` datetime DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of knowledge
-- ----------------------------

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `userid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pwd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logined` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES ('1256656046', '123456', '0');

-- ----------------------------
-- Table structure for placard
-- ----------------------------
DROP TABLE IF EXISTS `placard`;
CREATE TABLE `placard` (
  `id` int(11) NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `issue_date` datetime DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of placard
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `Id` int(255) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(255) NOT NULL COMMENT '姓名',
  `age` int(5) NOT NULL COMMENT '年龄',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '111', '1');
INSERT INTO `user` VALUES ('2', '12345', '2');
INSERT INTO `user` VALUES ('3', '444', '4');
INSERT INTO `user` VALUES ('4', '555', '5');
INSERT INTO `user` VALUES ('5', '6666', '6');
INSERT INTO `user` VALUES ('6', '777', '7');
INSERT INTO `user` VALUES ('7', '77', '7');
INSERT INTO `user` VALUES ('8', '888', '8');
INSERT INTO `user` VALUES ('9', '77777', '777');
INSERT INTO `user` VALUES ('10', '33333', '3333');

-- ----------------------------
-- Table structure for ygb
-- ----------------------------
DROP TABLE IF EXISTS `ygb`;
CREATE TABLE `ygb` (
  `bh1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bh2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bh3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bh4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bh5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bh6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bh7` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bh8` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bh9` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bh10` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bh11` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bh12` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bh13` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bh14` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bh15` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bh16` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2313154 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ygb
-- ----------------------------
INSERT INTO `ygb` VALUES ('21', '21', '打', 'a', 'a', 'a', 'a', '123', '', '', '', '', '', '', '', '', '');
INSERT INTO `ygb` VALUES ('', '', '', '', '', '15123045228', '', '2313149', '', '', '', '', '小规模纳税人', '', '', '', '');
INSERT INTO `ygb` VALUES ('null', 'null', 'null', 'null', 'null', 'null', 'null', '2313152', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `ygb` VALUES ('SAD', 'SDAD', 'DSA', 'ASD', 'SAD', 'DSA', 'DAS', '2313153', 'DAS', 'DAS', 'DASD', 'DSA', '个体工商户', 'DSA', 'DAS', 'DSA', 'DAS');
