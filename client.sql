/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : client

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-10-12 12:01:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for web
-- ----------------------------
DROP TABLE IF EXISTS `web`;
CREATE TABLE `web` (
  `data1` int(11) NOT NULL,
  `data2` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web
-- ----------------------------
INSERT INTO `web` VALUES ('122', '222', '1');
INSERT INTO `web` VALUES ('222', '333', '2');
INSERT INTO `web` VALUES ('333', '444', '3');
INSERT INTO `web` VALUES ('33', '555', '4');
INSERT INTO `web` VALUES ('22', '2222', '5');
