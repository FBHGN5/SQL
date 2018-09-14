/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : practice

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-07-16 22:49:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `last_edit_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES ('1', '1', '1', '2018-06-14 15:53:12', '2018-06-14 15:53:14');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `name` varchar(255) NOT NULL,
  `weight` double NOT NULL,
  `color` varchar(255) NOT NULL,
  `size` double NOT NULL,
  `total_number` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `weight` (`weight`),
  CONSTRAINT `weight` FOREIGN KEY (`weight`) REFERENCES `test_copy` (`weight`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1', '11', '1', '1', '1', '1', '1', '1', '2018-03-05 17:59:21');
INSERT INTO `test` VALUES ('1', '11', '1', '1', '1', '1', '1', '222', '2018-03-05 17:59:21');

-- ----------------------------
-- Table structure for test_copy
-- ----------------------------
DROP TABLE IF EXISTS `test_copy`;
CREATE TABLE `test_copy` (
  `name` varchar(255) NOT NULL,
  `weight` double NOT NULL,
  `color` varchar(255) NOT NULL,
  `size` double NOT NULL,
  `total_number` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`weight`),
  KEY `weight` (`weight`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_copy
-- ----------------------------
INSERT INTO `test_copy` VALUES ('1', '11', '1', '1', '1', '1', '1', '1', '2018-03-16 16:48:49');
INSERT INTO `test_copy` VALUES ('2', '11', '2', '2', '2', '2', '2', '2', '2018-03-16 16:48:43');
